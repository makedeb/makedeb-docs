Extra fields can be added to the resulting control file through the `control_fields` PKGBUILD variable and `-H`/`--field` options.

Fields are specified with both the name and value of the field within a single pair of quotes.

For example, to add a field listed as `MPR-Package: True` to the built package(s), enter the following into a PKGBUILD:

```sh
control_fields=('MPR-Package: True')
```

Likewise, use one the following when specifying fields as an argument for makedeb:

```sh
makedeb -H 'MPR-Package: True'
```

```sh
makedeb --field 'MPR-Package: True'
```


{% hint style="info" %}
To specify additional fields, pass additional `-H`/`--field` arguments to makedeb.
{% endhint %}

{% hint style="info" %}
While fields are contained inside of a single string, you cannot add arbitrary strings that aren't syntactically correct. If makedeb detects that the specified fields aren't valid, it will print a warning and skip adding it to the control file.
{% endhint %}
