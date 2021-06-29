Depending on the system you're on, you'll need follow different instructions.

# Debian
{% hint style="info" %}
These instructions are also applicable to distributions based on Debian, such as Ubuntu, Pop!_OS, Linux Mint, and the various [Ubuntu flavors](https://ubuntu.com/download/flavours).
{% endhint %}

On Debian systems, all packages are distributed through a central repository.

The repository holds packages that makedeb needs to function, such as [makepkg](https://wiki.archlinux.org/title/makepkg). In addition, it also helps to alleviate any issues when unstable makedeb versions break that would otherwise cause makedeb to not be upgradable.

## Repository Configuration
First, add the signing key:

```sh
wget -qO - 'https://proget.hunterwittenborn.com/debian-feeds/makedeb.pub' | gpg --dearmor | sudo tee /usr/share/keyrings/makedeb-archive-keyring.gpg &> /dev/null
```

Next, add the repository information to your system:

```sh
echo 'deb [signed-by=/usr/share/keyrings/makedeb-archive-keyring.gpg arch=all] https://proget.hunterwittenborn.com/ makedeb main' | sudo tee /etc/apt/sources.list.d/makedeb.list
```

Lastly, update the repository cache on your system:

```sh
sudo apt update
```

Installation instructions for makedeb itself can be found in the [installation](/makedeb/installation.md#debian) section.

# Arch Linux
{% hint style="info" %}
These instructions are also applicable to distributions based on Arch, such as Manjaro and Artix Linux.
{% endhint %}

On Arch Linux, no configuration is needed to install makedeb, and can be installed directly from the Arch User Repository.

Applicable links can be found in makedeb's [installation](/makedeb/installation.md#arch-linux) section.
