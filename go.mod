module github.com/minyk/kubectl-demo

go 1.13

require (
	github.com/spf13/cobra v0.0.5
	github.com/spf13/pflag v1.0.5
	k8s.io/cli-runtime v0.0.0-20200424201741-f813b9eb0147
	k8s.io/client-go v0.0.0-20200424080147-0ad81dc3c85d
)

replace (
	golang.org/x/sys => golang.org/x/sys v0.0.0-20190813064441-fde4db37ae7a // pinned to release-branch.go1.13
	golang.org/x/tools => golang.org/x/tools v0.0.0-20190821162956-65e3620a7ae7 // pinned to release-branch.go1.13
	k8s.io/api => k8s.io/api v0.0.0-20200421221621-2ca06ba83edf
	k8s.io/apimachinery => k8s.io/apimachinery v0.0.0-20200423195709-147f4cafe1e5
	k8s.io/cli-runtime => k8s.io/cli-runtime v0.0.0-20200424201741-f813b9eb0147
	k8s.io/client-go => k8s.io/client-go v0.0.0-20200424080147-0ad81dc3c85d
)
