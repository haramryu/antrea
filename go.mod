module github.com/vmware-tanzu/antrea

go 1.13

require (
	github.com/TomCodeLV/OVSDB-golang-lib v0.0.0-20190103132138-cf96a9e61bd1
	github.com/aws/aws-sdk-go v1.31.8 // indirect
	github.com/blang/semver v3.5.0+incompatible
	github.com/cenk/hub v1.0.1 // indirect
	github.com/cenkalti/hub v1.0.1 // indirect
	github.com/cenkalti/rpc2 v0.0.0-20180727162946-9642ea02d0aa // indirect
	github.com/containernetworking/cni v0.7.1
	github.com/containernetworking/plugins v0.8.2-0.20190724153215-ded2f1757770
	github.com/contiv/libOpenflow v0.0.0-20200319171453-882ba6d92cbc
	github.com/contiv/ofnet v0.0.0-00010101000000-000000000000
	github.com/coreos/go-iptables v0.4.1
	github.com/davecgh/go-spew v1.1.1
	github.com/elazarl/goproxy v0.0.0-20190911111923-ecfe977594f1 // indirect
	github.com/evanphx/json-patch v4.5.0+incompatible // indirect
	github.com/go-openapi/spec v0.19.3
	github.com/gogo/protobuf v1.2.2-0.20190723190241-65acae22fc9d
	github.com/golang/mock v1.4.1
	github.com/golang/protobuf v1.3.2
	github.com/google/uuid v1.1.1
	github.com/googleapis/gnostic v0.3.1 // indirect
	github.com/imdario/mergo v0.3.7 // indirect
	github.com/j-keck/arping v1.0.0
	github.com/kevinburke/ssh_config v0.0.0-20190725054713-01f96b0aa0cd
	github.com/prometheus/client_golang v1.0.0
	github.com/satori/go.uuid v1.2.0
	github.com/sirupsen/logrus v1.4.2
	github.com/spf13/cobra v0.0.5
	github.com/spf13/pflag v1.0.5
	github.com/streamrail/concurrent-map v0.0.0-20160823150647-8bf1e9bacbf6 // indirect
	github.com/stretchr/testify v1.5.1
	github.com/vishvananda/netlink v1.1.0
	github.com/vmware-tanzu/octant v0.10.2
	golang.org/x/crypto v0.0.0-20200220183623-bac4c82f6975
	golang.org/x/exp v0.0.0-20190312203227-4b39c73a6495
	golang.org/x/sync v0.0.0-20190911185100-cd5d95a43a6e // indirect
	golang.org/x/sys v0.0.0-20200122134326-e047566fdf82
	google.golang.org/grpc v1.23.1
	gopkg.in/gomail.v2 v2.0.0-20160411212932-81ebce5c23df // indirect
	gopkg.in/yaml.v2 v2.2.8
	k8s.io/api v0.17.6
	k8s.io/apimachinery v0.17.6
	k8s.io/apiserver v0.17.6
	k8s.io/client-go v0.17.6
	k8s.io/component-base v0.17.6
	k8s.io/klog v1.0.0
	k8s.io/kube-openapi v0.0.0-20200410145947-bcb3869e6f29
)

replace (
	github.com/contiv/ofnet => github.com/wenyingd/ofnet v0.0.0-20200326015539-5862ec3fa686
	// fake.NewSimpleClientset is quite slow when it's initialized with massive objects due to
	// https://github.com/kubernetes/kubernetes/issues/89574. It takes more than tens of minutes to
	// init a fake client with 200k objects, which makes it hard to run the NetworkPolicy scale test.
	// There is an optimization https://github.com/kubernetes/kubernetes/pull/89575 but will only be
	// available from 1.19.0 and later releases. Use this commit before Antrea bumps up its K8s
	// dependency version.
	k8s.io/client-go => github.com/tnqn/client-go v0.0.0-20200521074542-6c18cd58306a
)
