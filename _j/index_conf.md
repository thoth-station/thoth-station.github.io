---
title: Removing the given package as it does not use enabled index
---

The given package was removed based on package source indexes configured.

## Issue description

The given package was removed based on package sources configured.

The configuration is done in Pipfile:

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
tensorflow = "*"

[requires]
python_version = "3.9"

[thoth]
disable_index_adjustment = true
```

In the example above, only ``aicoe-tensorflow`` and ``pypi`` package sources
will be used for obtaining packages.  See [Thoth's strict indexes
configuration][1].

## Affected packages:

See the logged message for affected package information.

## Severity

 * WARNING

## Issue fix

The resolver will try to automatically find another alternative package coming
from an enabled index￼to satisfy dependencies.

## Pipeline units

 * [FilterConfiguredIndexSieve](https://thoth-station.ninja/docs/developers/adviser/thoth.adviser.sieves.html#thoth.adviser.sieves.FilterConfiguredIndexSieve)

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
