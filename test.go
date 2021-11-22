package main

import (
	"fmt"
	"os"
	"io"
	"bufio"
	"strings"
	"context"
	"github.com/containerd/containerd"
	"github.com/containerd/containerd/cio"
	"github.com/containerd/containerd/oci"
	"github.com/containerd/containerd/namespaces"
)

func main() {
    f, err := os.Open("test.txt")
	if err != nil {
		fmt.Println("err")
		return
	}
	defer f.Close()

	buf := bufio.NewReader(f)

	ctx := namespaces.WithNamespace(context.Background(), "qitest")

	for {
		s, _, c := buf.ReadLine()
		if c == io.EOF {
			break
		}
		v := strings.Split(string(s), "\t")
		image := "192.168.111.101/library/" + v[0] + ":" + v[1]
		container, err := client.NewContainer(
			ctx,
			"test",
			containerd.WithImage(image),
			containerd.WithNewSnapshot("overlaybd",image),
			containerd.WithNewSpec(oci.WithImageConfig(image))
		)
		if err != nil {
			return err
		}

		// container.Delete(ctx, containerd.WithSnapshotCleanup)
	}
}
