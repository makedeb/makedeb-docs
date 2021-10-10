When listing relationships for any given package under normal variables (i.e. things like `depends`, `optdepends`, and `conflicts`), the maintainer **MUST** make said relationships applicable to those on the latest Ubuntu LTS release.

An exception to this rule is when a new Ubuntu LTS release has recently been released ([in April of every even year](https://ubuntu.com/about/release-cycle)), at which point it is OK if the listed relationships are applicable to what was previously the latest Ubuntu LTS release.

Users needing to set package relationships outside of those specific to the latest Ubuntu LTS release should look at makedeb's [distribution-specific relationship](/makedeb/pkgbuild-specification/variables/#depends-optional-function-array) functionality.

!!! note
    When a new Ubuntu LTS release has been made, it's a good idea to list distro-specific packages for both releases (when applicable) to aid users who might be on either release.

    Regardless, packages should still strive to make all packages listed under the default variables apply to the latest Ubuntu LTS release.
