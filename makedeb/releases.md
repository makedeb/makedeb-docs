makedeb has three release channels, `stable`, `beta`, and `alpha`. The three serve to help bring changes to users gradually, alleviating any sudden changes that could break a user's installation.

`stable` is the tested, known-to-work build of makedeb. This build receives changes whenever they're deemed to be safe, and is ready for production use.

`beta` is regularly synced from the `alpha` branch. This serves as the starting point for bringing new features to stable users, being the place where any bugs are fixed and features are polished. When `beta` is deemed to be ready for production users, it is merged into `stable`.

`alpha` is the bleeding-edge version of makedeb. This build is created as soon as changes are pushed, resulting in a package that constantly gets new features. Users of this release should be ready (and expect) for breakage from time to time.
