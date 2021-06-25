Depending on the system you are on, you'll need follow different instructions.

# Debian
{% hint style="info" %}
These instructions are also applicable to distributions based on Debian, such as Ubuntu.
{% endhint %}

On Debian systems, all packages are distributed through a central repository.

The repository also holds packages that the makedeb suite needs to function, such as [makepkg](https://wiki.archlinux.org/title/makepkg).

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

Installation instructions for individual packages can be found in their relevant sections.

# Arch Linux
{% hint style="info" %}
These instructions are also applicable to distributions based on Arch, such as Manjaro, Chakra Linux, and Artix Linux.
{% endhint %}

On Arch Linux, the makedeb package suite is distributed through the [Arch User Repository](https://wiki.archlinux.org/title/Arch_User_Repository).

Applicable links can be found in the relevant package's section in the table of contents.
