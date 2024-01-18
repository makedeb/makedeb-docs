---
title: "Adding Packages"
draft: false
weight: 3
---

The Prebuilt-MPR only builds and updates [a select group of packages](https://github.com/makedeb/prebuilt-mpr/blob/main/packages.toml). This is done for a few reasons:

1. So the repository doesn't get overloaded with package updates.
2. So untrustworty, unpopular, or otherwise undesirable packages don't get a PR to get added. In the scale of hundreds of packages, this reduces the amount of PRs that need to constantly be closed greatly.

If you want a package to be added then, you should submit a [package request](https://github.com/makedeb/prebuilt-mpr/issues/new?assignees=&labels=&template=package-request.yml) on GitHub for the package that you want added. You can submit a request for any package, even your own.
