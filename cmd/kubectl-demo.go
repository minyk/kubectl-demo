package main

import (
	"os"

	"github.com/spf13/pflag"

	"github.com/minyk/kubectl-demo/pkg/cmd"
	"k8s.io/cli-runtime/pkg/genericclioptions"
)

func main() {
	flags := pflag.NewFlagSet("kubectl-ns", pflag.ExitOnError)
	pflag.CommandLine = flags

	root := cmd.NewCmdNamespace(genericclioptions.IOStreams{In: os.Stdin, Out: os.Stdout, ErrOut: os.Stderr})
	if err := root.Execute(); err != nil {
		os.Exit(1)
	}
}
