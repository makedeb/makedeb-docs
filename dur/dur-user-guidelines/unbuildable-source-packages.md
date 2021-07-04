Even if a package is otherwise unbuildable on Debian systems (i.e. due to old dependencies), binary packages that are source-available **MUST** be appended with `-bin`.  

It is possible that source-available packages that are not buildable could eventually become so, and if such a scenario arises, it would become tedious on Trusted Users to have to manage repository merges due to package renames, especially at scale.
