makedeb is the center of the makedeb package suite, and is (unironically) what the project is named after.

Key to makedeb's function is [makepkg](https://wiki.archlinux.org/title/makepkg), the program used in Arch Linux's build system for creating packages.

Besides the things you'd probably expect *makepkg* to do, makedeb takes care of converting the resulting package into a format that fits the [Debian binary package guidelines](https://www.debian.org/doc/debian-policy/ch-binary.html), including architecture name conversion, and, if makedeb-db is installed, conversion of dependency names.

On the Debian releases, makedeb also features build dependency management with APT.

{% hint style="info" %}
Users who wish to use the dependency conversion features of makedeb should install [makedeb-db](/makedeb-db/installing.md)
