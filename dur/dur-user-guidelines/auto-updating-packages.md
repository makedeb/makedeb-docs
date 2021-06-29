{% hint style="info" %}
This section is not actively enforced on the DUR. It is merely a guide to help make things more consistent for end users.
{% endhint %}

Packages which have the ability to automatically check for updates and publish themselves should use a Bash script, titled `.update-check.sh`, in the same directory as the PKGBUILD.

The script should automatically update the PKGBUILD with the relevant info, leaving `.SRCINFO` generation and committing/pushing with `git` to external commands.

If the script makes any modifications, and is thus ready to be published, it should exit with exit code `0`. If no modifications are made, any other exit code may be used, though `1` may be used for consistency.

{% hint style="info" %}
Exit code `0` was chosen when modifications are made in case a script sets the `set -e` option.

Here, it is assumed that when a script exits prematurely due to the `set -e` option being set, that it should not be uploaded (and would thus be captured with a non-zero exit code, likewise to when no modifications are made).

It is thus assumed that an exit code of `0` means that the script made modifications and finished to completion, thus making it ready for publishing on the DUR.
{% endhint %}
