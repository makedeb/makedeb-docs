makedeb is the center of the makedeb package suite, and is (unironically) what the project is named after.

Key to makedeb's function is makepkg, the program used in Arch Linux's build system for creating packages.

Besides the things you'd probably expect *makepkg* to do, makedeb takes care of converting the resulting binary into a format that fits the Debian packaging guidelines, including architecture name conversion, and, if makedeb-db is installed, conversion of dependency names.

makedeb also features build dependency management on the Debian releases.
