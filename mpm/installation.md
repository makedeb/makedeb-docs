{% hint style="info" %}
mpm only works on Debian systems. Users looking for an AUR package manager on Arch Linux should look for a different program, such as [pamac](https://wiki.manjaro.org/index.php/Pamac), [yay](https://github.com/Jguer/yay), or [paru](https://github.com/Morganamilo/paru).
{% endhint %}

To install mpm from the stable release, install the `mpm` package:

```sh
sudo apt install mpm
```

Or, to install the alpha release, install the `mpm-alpha` package:

```sh
sudo apt install mpm-alpha
```

{% hint style="info" %}
`mpm` depends on the version of makedeb matching the channel your on. For example, if you have `makedeb` installed, installing `mpm-alpha` will uninstall `makedeb` and install `makedeb-alpha`.
{% endhint %}
