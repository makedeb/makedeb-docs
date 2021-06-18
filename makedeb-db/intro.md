makedeb-db is a tool for converting Dependency names from Arch Linux to their Debian counterparts.

makedeb-db is what allows makedeb and mpm's dependency magic to work.

In makedeb, it serves to convert dependency names, as well as automatically add and remove dependencies for Arch Linux and AUR packages.

In addition to everything it can do everything it can in makedeb, makedeb-db provides a list of packages to install as dependencies from the Arch repositories and AUR in mpm.

While makedeb-db is mainly designed for internal use by makedeb and mpm, others may find it useful as a starting point to converting dependencies between the two distributions in their own projects.
