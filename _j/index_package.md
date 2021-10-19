---
title: Skipping the given package as it does not use configured index
---

The given package was removed based on package source indexes configured
specific to the package configuration.

## Issue description

The given package was removed based on the index configuration specific to
package as shown in the example below (see ``index="aicoe-tensorflow"``):

```toml
[[source]]
url = "https://pypi.org/simple"
verify_ssl = true
name = "pypi"

[[source]]
url = "https://tensorflow.pypi.thoth-station.ninja/index/manylinux2010/AVX2/simple/"
verify_ssl = true
name = "aicoe-tensorflow"

[packages]
tensorflow = {version="*", index="aicoe-tensorflow"}

[requires]
python_version = "3.9"

[thoth]
disable_index_adjustment = true
```

Package ``tensorflow`` will be installed from the ``aicoe-tensorflow`` index as
stated. See [Thoth's strict indexes configuration for more info][1].

## Affected packages

See the logged message for affected package information.

## Severity

 * WARNING

## Issue fix

Resolver will try to find another alternative for the given package coming from
the configured index.

## Pipeline units

 * [PackageIndexConfigurationSieve](https://thoth-station.ninja/docs/developers/adviser/thoth.adviser.sieves.html#thoth.adviser.sieves.PackageIndexConfigurationSieve)

## Recommendation types

 * latest
 * performance
 * security
 * stable
 * testing

See [this document that describes recommendation types
listed](http://thoth-station.ninja/recommendation-types).

## Related

 * [Thoth's strict index configuration][1]

[1]: https://thoth-station.ninja/docs/developers/adviser/experimental_features.html#strict-index-configuration
