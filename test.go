package main

import (
        "context"
        "flag"
        "fmt"
        "os"
        "syscall"
        "time"

        //"github.com/containerd/containerd/cmd/ctr/commands"
        "github.com/containerd/containerd"
        "github.com/containerd/containerd/cio"
        "github.com/containerd/containerd/namespaces"
        "github.com/containerd/containerd/oci"
        "github.com/containerd/containerd/snapshots"
)

var image_name = flag.String("name", "", "")
var image_tag = flag.String("tag", "", "")

func main() {

        flag.Parse()

        client, err := containerd.New("/run/containerd/containerd.sock")
        if err != nil {
                fmt.Println(err)
                return
        }
        defer client.Close()

        ctx := namespaces.WithNamespace(context.Background(), "default")
        file, err := os.OpenFile("result.txt", os.O_CREATE|os.O_APPEND|os.O_RDWR, os.ModeAppend)
        if err != nil {
                fmt.Println(err)
                return
        }
        defer file.Close()
        snps := client.SnapshotService("overlaybd")
        snps.Remove(ctx, "test")

        st := map[string]string{}

        fmt.Fprintf(file, *image_name+":"+*image_tag+"\n")
        ref := "registry.cn-hangzhou.aliyuncs.com/qitest/" + *image_name + ":" + *image_tag + "_conv"
        i, err := client.ImageService().Get(ctx, ref)
        if err != nil {
                fmt.Println(err)
                return
        }
        var image containerd.Image
        image = containerd.NewImage(client, i)
        unpacked, err := image.IsUnpacked(ctx, "overlaybd")
        if err != nil {
                fmt.Println(err)
                return
        }

        if !unpacked {
                if err := image.Unpack(ctx, "overlaybd"); err != nil {
                        fmt.Println(err)
                        return
                }
        }
        startTime := time.Now()
        container, err := client.NewContainer(
                ctx,
                "test",
                containerd.WithImage(image),
                containerd.WithSnapshotter("overlaybd"),
                containerd.WithNewSnapshot("test", image, snapshots.WithLabels(st)),
                containerd.WithNewSpec(oci.WithImageConfig(image)),
        )
        if err != nil {
                fmt.Println(err)
                return
        }
        defer container.Delete(ctx, containerd.WithSnapshotCleanup)
        elapsedTime := time.Since(startTime) / time.Millisecond
        fmt.Fprintf(file, "%d ", elapsedTime)

        startTime = time.Now()
        task, err := container.NewTask(ctx, cio.NewCreator(cio.WithStdio))
        if err != nil {
                fmt.Println(err)
                return
        }
        defer task.Delete(ctx)
        elapsedTime = time.Since(startTime) / time.Millisecond
        fmt.Fprintf(file, "%d ", elapsedTime)

        task.Wait(ctx)

        startTime = time.Now()
        if err := task.Start(ctx); err != nil {
                fmt.Println(err)
                return
        }
        elapsedTime = time.Since(startTime) / time.Millisecond
        fmt.Fprintf(file, "%d \n", elapsedTime)

        if err := task.Kill(ctx, syscall.SIGTERM); err != nil {
                fmt.Println(err)
                return
        }

        task.Delete(ctx, containerd.WithProcessKill)
        return
}