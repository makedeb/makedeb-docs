The makedeb package suite currently consists of three packages:

- **makedeb:** Used to create Debian packages from PKGBUILDs.

- **mpm:** Package manager for makedeb. Used to automate installing packages from the AUR and Arch Linux repositories on Debian systems.

- **makedeb-db:** Dependency conversion tool for makedeb and mpm. Converts dependency names from Arch Linux to their Debian counterparts.

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
wget -O - 'https://proget.hunterwittenborn.com/debian-feeds/makedeb.pub' | gpg --dearmor | sudo tee /usr/share/keyrings/makedeb-archive-keyring.gpg &> /dev/null
```

Next, add the repository information:

```sh
echo 'deb [signed-by=/usr/share/keyrings/makedeb-archive-keyring.gpg arch=all] https://proget.hunterwittenborn.com/ makedeb main' | sudo tee /etc/apt/sources.list.d/makedeb.list
```

Lastly, update the repository information on your system:

```sh
sudo apt update
```

Visit each package's installation section for information on installing.

# Arch Linux
{% hint style="info" %}
These instructions are also applicable to distributions based on Arch, such as Manjaro, Chakra Linux, and Artix Linux.
{% endhint %}

On Arch Linux, the makedeb package suite is distributed through the [Arch User Repository](https://wiki.archlinux.org/title/Arch_User_Repository).

Applicable links can be found in the relevant package's section in the table of contents.
