---
title: "Getting Started"
draft: false
weight: 2
---

The Prebuilt-MPR currently supports and publishes packages for the following distributions and architectures:

#### Distros
- Ubuntu 20.04 (`focal`)
- Ubuntu 22.04 (`jammy`)
- Ubuntu 23.04 (`lunar`)
- Debian 11 (`bullseye`)
- Debian 12 (`bookworm`)

#### Architectures
- `amd64`
- `arm64`

{{< notice "note" >}}
While the Prebuilt-MPR supports the above distributions and architectures, this doesn't mean all packages will be available for all systems:

- The MPR itself only supports the [latest Ubuntu LTS release](/using-the-mpr/support-policy), and packages are thus not guaranteed to be available on other distributions.
- `arm64` support is currently experimental, and packages may not be available.

You can see what packages are available after setting up the Prebuilt-MPR APT repository on your system.
{{< /notice >}}

## Setting up the repository
Run the following to set up the APT repository on your system:

```sh
wget -qO - 'https://proget.{{< makedeb_url >}}/debian-feeds/prebuilt-mpr.pub' | gpg --dearmor | sudo tee /usr/share/keyrings/prebuilt-mpr-archive-keyring.gpg 1> /dev/null
echo "deb [arch=all,$(dpkg --print-architecture) signed-by=/usr/share/keyrings/prebuilt-mpr-archive-keyring.gpg] https://proget.{{< makedeb_url >}} prebuilt-mpr $(lsb_release -cs)" | sudo tee /etc/apt/sources.list.d/prebuilt-mpr.list
sudo apt update
```

{{< notice "note" >}}
If you're on an unsupported distribution, you can substitute the `$(lsb_release -cs)` command with any of the above distributions. Note that packages may not work though.
{{< /notice >}}

You can then proceed with installing packages from the Prebuilt-MPR.
