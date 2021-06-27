When listing relationships for any given package (i.e. things like `depends`, `optdepends`, and `conflicts`), the packages **MUST** be applicable to those on the latest Ubuntu LTS release.

Users needing to set packages outside of such should look at makedeb's [distribution-specific package](/makedeb/distribution-specific-relationships.md) functionality.

{% hint style="info" %}
When a new Ubuntu LTS release has been made, it's a good idea to list distro-specific packages for both releases to aid users who might be on either.

Regardless, packages should still strive to make all packages listed under the default variables apply to the latest Ubuntu LTS release.
{% endhint %}
