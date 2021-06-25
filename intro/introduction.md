# Introduction
Welcome to the makedeb docs!

makedeb is a package suite for creating and installing Debian archives directly from PKGBUILDs.

Through the use of makedeb and its related tools, it's possible to install a variety of packages native to Arch Linux directly on Debian-based systems.

The makedeb suite also allows Debian package maintainers to use Arch's [PKGBUILD](https://wiki.archlinux.org/title/PKGBUILD) format natively on Debian systems to build and package their programs for APT.

The makedeb suite currently consists of the following:

- **makedeb**: Used to create Debian packages from PKGBUILDs.

- **mpm**: Package manager for makedeb, used to pull and install packages from the [DUR](/dur/intro.md).

- **makedeb-db**: Now defunct tool for converting dependency names from Arch Linux to their Debian counterparts. This was once used in makedeb and mpm to aid in installing packages from the AUR and Arch repositories, but this has since been faded out with the addition of the DUR.

- **DUR**: The Debian User Repository. This is a user repository that functions similarly to the AUR.

To get started, head over to [Installing](/intro/installing.md).
