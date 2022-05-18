---
title: "Differences from makepkg"
draft: false
weight: 3
---

makedeb is based on (and is originated in the codebase of) [makepkg](https://wiki.archlinux.org/title/makepkg), the packaging tool used on Arch Linux. Likewise, most of the behavior in makedeb is the same as makepkg, but there are a few changes that have been made to work better in the packaging system for .deb packages.

## PKGBUILD changes
### `arch`
The values in the `arch` value are taken from the output of `dpkg --print-architecture`. makepkg on the other hand uses an architecture similar to the output of `uname -m`. This means that most architectures you'd find in makepkg-styled PKGBUILD will likely not work with makedeb, and will need to be changed.

In practice, it looks like this (for the `x86_64` architecture as an example):

In makepkg, you'd do this:

```sh
arch=('x86_64')
```

But with makedeb, you would use this instead:

```sh
arch=('amd64')
```

### `backup`
In makepkg, backup entries are specified with no leading forward slash:

```sh
backup=('etc/pkgname.conf`)
```

makedeb on the other hand requires all entries to start with a forward slash instead:

```sh
backup=('/etc/pkgname.conf')
```
