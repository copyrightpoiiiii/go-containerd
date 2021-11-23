package main

import (
        "fmt"
        "os"
        "io"
        "bufio"
        "strings"
        "context"
        "syscall"

        //"github.com/containerd/containerd/cmd/ctr/commands"
        "github.com/containerd/containerd"
        "github.com/containerd/containerd/snapshots"
        "github.com/containerd/containerd/cio"
        "github.com/containerd/containerd/oci"
        "github.com/containerd/containerd/namespaces"
)

func main() {
    f, err := os.Open("test.txt")
    if err != nil {
        fmt.Println(err)
        return
    }
    defer f.Close()

    buf := bufio.NewReader(f)

    //client, ctx, cancel, err := commands.NewClient(context)

    client, err := containerd.New("/run/containerd/containerd.sock")
    if err != nil {
        fmt.Println(err)
        return
    }
    defer client.Close()

    ctx := namespaces.WithNamespace(context.Background(), "default")
    fmt.Println("point1")
    for {
            st :=  map[string]string{}
            s, _, c := buf.ReadLine()
            if c == io.EOF {
                    break
            }
            v := strings.Split(string(s), "\t")
            ref := "registry.cn-hangzhou.aliyuncs.com/qitest/" + v[0] + ":" + v[1] + "_conv"
            i, err := client.ImageService().Get(ctx, ref)
                        if err != nil {
                                fmt.Println(err)
                                return
                        }
            var image containerd.Image
            image = containerd.NewImage(client,i)
            unpacked, err := image.IsUnpacked(ctx, "overlaybd")
            if err != nil {
                fmt.Println(err)
                return
            }
            fmt.Println("point 3")
            if !unpacked {
                if err := image.Unpack(ctx, "overlaybd"); err != nil {
                    fmt.Println(err)
                    return
                }
            }
            fmt.Println("start container")
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

            fmt.Println("start task")

            task, err := container.NewTask(ctx, cio.NewCreator(cio.WithStdio))
            if err != nil {
                fmt.Println(err)
                return
            }
            defer task.Delete(ctx)

            exitStatusC, err := task.Wait(ctx)
            if err != nil {
                fmt.Println(err)
            }

            if err := task.Start(ctx); err != nil {
                fmt.Println(err)
                return
            }

            if err := task.Kill(ctx, syscall.SIGTERM); err != nil {
                fmt.Println(err)
                return
            }

            status := <-exitStatusC
            code, _, err := status.Result()
            if err != nil {
                fmt.Println(err)
                return
            }

            if _, err := task.Delete(ctx); err != nil {
                fmt.Println(err)
                return
            }
            fmt.Println("%d",code)
            return
    }
}