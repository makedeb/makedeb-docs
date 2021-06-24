The DUR User Guidelines are based on [those of the AUR](https://wiki.archlinux.org/index.php/AUR_User_Guidelines). In addition to those rules, the following restrictions are in place:

---

**NEVER** include install scripts that would add repositories to the user's system. A known example of this is Google Chrome, which, by default, adds a repository to keep itself up to date. This is, of course, not desired when using the DUR, as all updates should be handled by the DUR itself.

When listing dependencies under `depends()`, **ALWAYS** list the package names that would be applicable to the latest Ubuntu LTS release.

Even if the package is otherwise unbuildable on Debian systems (i.e. due to old dependencies), packages that are source-available **MUST** be appended with `-bin`.
