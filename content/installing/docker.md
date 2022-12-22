---
title: "Docker"
draft: false
weight: 5
---

Docker images are published nightly for all releases of makedeb. The images come with minimal packages, containing only the bare necessities needed to run makedeb.

## Downloading images

Images can be downloaded from the following:

{{< toggle-menu "Stable" "Beta" "Alpha" >}}

{{< toggle-item class="Stable" show=1 >}}
```sh
proget.{{< makedeb_url >}}/docker/makedeb/makedeb
```
{{< /toggle-item >}}

{{< toggle-item class="Beta" >}}
```sh
proget.{{< makedeb_url >}}/docker/makedeb/makedeb-beta
```
{{< /toggle-item >}}

{{< toggle-item class="Alpha" >}}
```sh
proget.{{< makedeb_url >}}/docker/makedeb/makedeb-alpha
```
{{< /toggle-item >}}

## Image tags
You **MUST** also append the image name with any of the following tags:

### Debian
- `debian-buster` (built from `debian:buster`)
- `debian-bullseye` (built from `debian:bullseye`)
- `debian-latest` (built from `debian:latest`)

### Ubuntu
{{< notice "warning" >}}
Images are published for [all currently supported releases of Ubuntu](https://wiki.ubuntu.com/Releases), plus `latest` and `rolling`. When releases are no longer supported, they stop recieving updates in their respective makedeb Docker images and will no longer be listed here.
{{< /notice >}}

- `ubuntu-bionic` (built from `ubuntu:bionic`)
- `ubuntu-focal` (built from `ubuntu:focal`)
- `ubuntu-jammy` (built from `ubuntu:jammy`)
- `ubuntu-kinetic` (built from `ubuntu:kinetic`)
- `ubuntu-rolling` (built from `ubuntu:rolling`)
- `ubuntu-latest` (built from `ubuntu:latest`)

For example, to pull the beta image with the `ubuntu-bionic` tag, pull the following:

```
proget.{{< makedeb_url >}}/docker/makedeb/makedeb-beta:ubuntu-bionic
```
