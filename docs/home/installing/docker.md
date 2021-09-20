Docker images are published nightly for all releases of makedeb. The images come with minimal packages, containing only the bare necessities needed to run makedeb.

## Downloading images
Images can be downloaded from the following:

=== "Stable"
    ```
    {{env.proget_url}}/docker/makedeb/makedeb
    ```

=== "Beta"
    ```
    {{env.proget_url}}/docker/makedeb/makedeb-beta
    ```

=== "Alpha"
    ```
    {{env.proget_url}}/docker/makedeb/makedeb-alpha
    ```

## Image tags
You **MUST** also append the image name with any of the following tags:

### Debian
- `debian-buster` (built from `debian:buster`)
- `debian-bullseye` (built from `debian:bullseye`)
- `debian-latest` (built from `debian:latest`)

### Ubuntu
- `ubuntu-bionic` (built from `ubuntu:bionic`)
- `ubuntu-focal` (built from `ubuntu:focal`)
- `ubuntu-rolling` (built from `ubuntu:rolling`)
- `ubuntu-latest` (built from `ubuntu:latest`)

### Arch Linux
- `archlinux-latest` (built from `archlinux:latest`)

For example, to pull the beta image with the `ubuntu-bionic` tag, pull the following:

```
{{env.proget_url}}/docker/makedeb/makedeb-beta:ubuntu-bionic
```
