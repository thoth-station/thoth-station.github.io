---
title: Skipping the given package as it does not use configured index
---

The given package was removed from the resolution process based on the strict
index configuration.

## Issue description

The resolver skipped the given package based on the configuration stated in the
Pipenv file:

```toml
[[source]]
url = "https://tensorflow.pypi.thoth-station.ninja/index/manylinux2010/AVX2/simple/"
verify_ssl = true
name = "aicoe-tensorflow"

[packages]
tensorflow = {version="*", index="aicoe-tensorflow"}

[thoth]
disable_index_adjustment = true
```

The configuration above makes sure all the ``tensorflow`` packages are coming from the
specified index based on configuration. See [documentation for more info][1].

## Affected packages:

See the logged message for affected package information.

## Severity

 * WARNING

## Issue fix

Resolver will try to automatically find an alternative package hosted on a
different Python package index. If no alternative is found, the resolution will
fail.

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

 * [Thoth adviser strict index configuration][1]

[1]: https://thoth-station.ninja/docs/developers/adviser/experimental_features.html#strict-index-configuration
