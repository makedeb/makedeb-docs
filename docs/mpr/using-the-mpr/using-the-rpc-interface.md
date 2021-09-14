The MPR [RPC](https://en.wikipedia.org/wiki/Remote_procedure_call) provides a simple way to interact with the MPR in a way that applications and automated systems can easily use. Requests are sent via HTTP GET requests, and the MPR sends back a [JSON](https://www.json.org/json-en.html) response.

## Preface
All requests for the RPC interface are sent to `https://{{env.mpr_url}}/rpc/`, followed by various query parameters to describe the request.

Query parameters use `?` for the first query argument, followed by `&` to separate any further arguments.

```
https://{{env.mpr_url}}/rpc/?v=5&type=info&arg=makedeb
```

## Usage
Two query types are currently supported:

- `search`
- `info`

Instructions for using each are as follows:

### search
`search` is used to perform various types of searches against the MPR.

Arguments for searches are constructed as follows:

```
https://{{env.mpr_url}}/rpc/?v={argument}&type=search&by={argument}&arg={argument}
```

The value for `v` should currently **always** be set to five. New features may be introduced into the RPC interface in the future, in which case the version will be required to be bumped to utilize the new features.

!!! warning
    Do **not** use older versions of the API under any circumstance. They will be completely removed in the future, with no remediation for users who are currently using them.

The value for `by` can be set to any of the following:

- `name` (search via package names)
- `name-desc` (search via package names and descriptions)
- `maintainer` (search via package maintainer names)
- `depends` (search for packages that contain `argument` under `depends`)
- `optdepends` (search for packages that contain `argument` under `optdepends`)
- `makedepends` (search for packages that contain `argument` under `makedepends`)
- `checkdepends` (search for packages that contain `argument` under `checkdepends`)

Omitting the `by` argument will default to doing searches against `name-desc`.

The value of `arg` should be set to the string to look up against the relevant value under `by`. Only one argument should be provided for `arg`, and providing multiple will cause the lookup to default to the last `arg` parameter provided.

### info
`info` is used to pull information on specific packages.

To construct an `info` request, use the following:

```
https://{{env.mpr_url}}/rpc/?v={argument}&type=info&arg[]={argument}
```

!!! note
    See [using-the-rpc-interface/#search](./#search) for information on how to use the `v` parameter.

`arg[]` accepts the name of any package on the MPR. Any number of packages may be provided, with each being specific via a separate `arg[]` parameter like so:

```
https://{{env.mpr_url}}/rpc/?v=5&type=info&arg[]=makedeb&arg[]=makedeb-beta&arg[]=makedeb-alpha
```
