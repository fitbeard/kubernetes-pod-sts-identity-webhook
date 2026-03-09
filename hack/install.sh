#!/usr/bin/env bash
set -euo pipefail

source hack/setup-go.sh

T=github.com/fitbeard/kubernetes-pod-sts-identity-webhook
GOOS=$(go env GOOS)
go version

GOARCH=amd64 go build -o build/gopath/bin/${_amd64/amazon-eks-pod-identity-webhook -ldflags='-s -w -buildid=""' $T
