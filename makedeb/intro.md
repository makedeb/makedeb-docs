Key to makedeb's function is [makepkg](https://wiki.archlinux.org/title/makepkg), the program used in Arch Linux's build system for creating packages.

Besides the things you'd probably expect *makepkg* to do, makedeb takes care of converting the resulting package into a format that fits the [Debian binary package guidelines](https://www.debian.org/doc/debian-policy/ch-binary.html), including architecture name conversion, and setting up the `control` file.

On the Debian variants, makedeb also features build dependency management with APT.
