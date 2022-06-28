---
title: "Getting Started"
draft: false
weight: 2
---

The Prebuilt-MPR currently supports and publishes packages for the following distributions:

- Ubuntu 20.04
- Ubuntu 22.04
- Debian 11

{{< notice "note" >}}
While the Prebuilt-MPR supports the above distributions, this doesn't necessarily mean all packages will be available for all listed distributions. [The MPR itself only supports the latest Ubuntu LTS](/using-the-mpr/support-policy), and not all packages are thus guaranteed to be able to be built.
{{< /notice >}}

{{< notice "note" >}}
If you are on a different distribution/release, you can substitute the `$(lsb_release -cs)` command below with either `focal`, `jammy`, or `bullseye` for Ubuntu 20.04, Ubuntu 22.04, and Debian 11 respectively. Note that you may get broken packages though.
{{< /notice >}}

## Setting up the repository
Run the following to set up the APT repository on your system:

```sh
curl -q 'https://proget.{{< makedeb_url >}}/debian-feeds/prebuilt-mpr.pub' | gpg --dearmor | sudo tee /usr/share/keyrings/prebuilt-mpr-archive-keyring.gpg 1> /dev/null
echo "deb [signed-by=/usr/share/keyrings/prebuilt-mpr-archive-keyring.gpg] https://proget.{{< makedeb_url >}} prebuilt-mpr $(lsb_release -cs)" | sudo tee /etc/apt/sources.list.d/prebuilt-mpr.list
sudo apt update
```

You can then proceed with installing packages from the Prebuilt-MPR.

{{< notice "warning" >}}
Not all packages on the MPR are available through the Prebuilt-MPR. You can get a current list of available packages at <https://github.com/makedeb/prebuilt-mpr/tree/main/packages.txt>.
{{< /notice >}}
