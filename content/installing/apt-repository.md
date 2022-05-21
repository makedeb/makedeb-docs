---
title: "APT Repository"
draft: false
weight: 2
---

The primary method for installation of makedeb is through the use of makedeb's APT repository.

{{< notice "note" >}}
These instructions are also applicable to distributions based on Debian and Ubuntu, such as Pop!\_OS, Linux Mint, and the various [Ubuntu flavors](https://ubuntu.com/download/flavours).
{{< /notice >}}

## Repository Configuration
To add makedeb's APT repository to your system, run the following:

```sh
wget -qO - 'https://proget.{{< makedeb_url >}}/debian-feeds/makedeb.pub' | gpg --dearmor | sudo tee /usr/share/keyrings/makedeb-archive-keyring.gpg 1> /dev/null
echo 'deb [signed-by=/usr/share/keyrings/makedeb-archive-keyring.gpg arch=all] https://proget.{{< makedeb_url >}}/ makedeb main' | sudo tee /etc/apt/sources.list.d/makedeb.list
sudo apt update
```

## Installation
{{< toggle-menu "Stable" "Beta" "Alpha" >}}

{{< toggle-item class="Stable" show=1 >}}
```sh
sudo apt install makedeb
```
{{< /toggle-item >}}

{{< toggle-item class="Beta" >}}
```sh
sudo apt install makedeb-beta
```
{{< /toggle-item >}}

{{< toggle-item class="Alpha" >}}
```sh
sudo apt install makedeb-alpha
```
{{< /toggle-item >}}
