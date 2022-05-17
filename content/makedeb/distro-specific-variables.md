---
title: "Distro/Architecture Specific Variables"
draft: false
weight: 2
---

Certain variables used by makedeb can contain distribution and architecture extensions. Let's consider this example:

```sh
depends=('pkg1')
depends_amd64=('pkg2')
focal_depends=('pkg3')
focal_depends_amd64=('pkg4')
```

All of these variables are used for the `depends` variable, likewise behaving in the following way:

1. If the system's distribution is `focal` **and** the system's architecture is `amd64`, `depends` is set to `pkg4`.
2. If the system's distribution is `focal`, `depends` is set to `pkg3`
3. If the system's architecture is `amd64`, `depends` is set to `pkg2`.
4. If none of the criteria are met, `depends` is set to `pkg1`.

The system's distribution is found via the `lsb_release -cs` command, and the system's architecture via `dpkg --print-architecture`.

If more than one match is found (such as both `depends_amd64` and `focal_depends_amd64`), the following order of specificity is used, with the first being of highest priority:

1. `focal_depends_amd64` (distribution + architecture)
2. `focal_depends` (distribution)
3. `depends_amd64` (architecture)
4. `depends` (bare variable)

The following variables currently support distribution and architecture extensions:
- `checkdepends`
- `conflicts`
- `depends`
- `makedepends`
- `optdepends`
- `provides`
- `replaces`
- `source`
- `control_fields`
- `cksums`
- `md5sums`
- `sha1sums`
- `sha224sums`
- `sha256sums`
- `sha384sums`
- `sha512sums`
- `b2sums`
