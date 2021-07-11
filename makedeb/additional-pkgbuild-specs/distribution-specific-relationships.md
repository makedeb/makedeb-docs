{% hint style="info" %}
The leading functionality is only available on the Debian releases of makedeb.
{% endhint %}

makedeb supports the use of distribution-specific package relationships, using the distribution codename obtained through the `lsb_release -cs` command.

{% hint style="info" %}
To enable distribution-specific package functionality, pass the `-v` or `--distro-packages` option to makedeb.
{% endhint %}

Distribution-specific relationships are currently allowed on the following variables:

- `depends`
- `optdepends`
- `conflicts`
- `makedepends`
- `checkdepends`
- `provides`
- `replaces`

To set package-specific relationships, prefix the variable with `release_`, where `release` is the codename for the distribution.

For example, to change the dependencies to `foo` and `bar` when the host system is running Ubuntu 20.10 Groovy Gorilla, enter the following into the PKGBUILD:

```sh
groovy_depends=('foo' 'bar')
```

{% hint style="info" %}
It is possible to enable distro-specific functionality only on specific variables. If you leave any variables out, makedeb will fallback to the normal ones.
{% endhint %}

{% hint style="info" %}
Setting distribution-specific package relationships inside of the `package()` function is currently not supported.
{% endhint %}

{% hint style="info" %}
Setting distribution-specific package relationships overwrites **all** mentioned packages in the built program. This includes any relationships that are mentioned in `package()`.
{% endhint %}

{% hint style="warning" %}
The Debian User Repository requires all packages listed under normal relationship variables (i.e. `depends`, `optdepends`, `conflicts`) to be applicable to the latest Ubuntu LTS release. See [here](/dur/dur-user-guidelines/package-relationships.md) for more info.
{% endhint %}
