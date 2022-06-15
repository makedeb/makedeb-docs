# makedeb-docs
This is the source code for the [makedeb Docs](https://docs.makedeb.org).

## Contributing
Hugo is used as the tool to build the website. We also use a custom Hugo theme which can be found at `themes/makedeb/`.

### Installing Hugo
You need at least version 0.71.0 to use certain features. If the version in your package manager's repositories isn't high enough, you can install [the `hugo` package from the MPR](https://mpr.makedeb.org/packages/hugo):

```sh
git clone 'https://mpr.makedeb.org/hugo.git'
cd hugo/
makedeb -si
```

### Writing new pages
All documentation itself is held inside of the `content/` directory, which is further divided into folders, in the same layout that you'd use to view the pages in your web browser.

To create a new documentation page, just copy an existing file in the same directory, and name the new file the same name as your page title.

#### Page ordering
Page ordering is handled via the `weight: {number}` entries at the beginning of each documentation page. If you need your page to come before certain pages, adjust the numbers in the pages accordingly.
