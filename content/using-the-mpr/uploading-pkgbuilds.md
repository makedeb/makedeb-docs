---
title: "Uploading Packages"
draft: false
weight: 3
---

To upload PKGBUILDs to the MPR, you must first already have an [SSH key pair](https://wiki.archlinux.org/title/SSH_keys) on your local system.

After such, add the public key to your account under the **My Account** section, and then properly configure SSH in your `~/.ssh/config` file like so:

```plain
Host mpr.{{< makedeb_url >}}
  IdentityFile ~/.ssh/name_of_ssh_key
  User mpr
```

{{< notice "warning" >}}
When uploading the SSH key to your profile on the MPR, make sure you **only** upload the file with the `.pub` extension.

On the contrary, `~/.ssh/name_of_ssh_key` in the above example should point to the file **without** the `.pub` extension.
{{< /notice >}}

## Verifying your connection
You should now verify your connection to the MPR, which consists of first verifying the SSH fingerprints for the MPR (which can be found on the [MPR instance information page](https://mpr.{{< makedeb_url >}}/about) while logged out), and then verifying that you actually logged in fine.

To test everything, you can run the following:

```sh
ssh "mpr@mpr.{{< makedeb_url >}}"
```

On a successful connection, you should get a message similar to such:

```plain
PTY allocation request failed on channel 0
Interactive shell is disabled.
Try `ssh mpr@mpr.{{< makedeb_url >}} help` for a list of commands.
Connection to mpr.{{< makedeb_url >}} closed.
```

## Uploading your package
Next, clone the Git repository for the package you'd like to add and copy the PKGBUILD to that directory (replace `pkgname` with the name of your package):

```sh
git clone "ssh://mpr@mpr.{{< makedeb_url >}}/pkgname.git"
```

Lastly, generate the SRCINFO file, then commit and push the changed files:

```sh
makedeb --printsrcinfo | tee .SRCINFO
git add PKGBUILD .SRCINFO
git commit -m "A very creative commit message"
git push
```
