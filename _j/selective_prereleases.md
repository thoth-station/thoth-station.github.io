---
title: Removing the given package as pre-releases are disabled
---

The given package was removed based on pre-release configuration.

## Issue description

The given package in specific version was removed based on pre-releases
configuration.

The configuration is done in Pipfile:

```toml
[thoth.allow_prereleases]
black = true
```

See [Thoth's selective pre-releases feature for more info][1].

## Affected packages:

See the logged message for affected package information.

## Severity

 * WARNING

## Issue fix

The resolver will try to automatically find another alternative package
to satisfy dependencies.

## Pipeline units

 * [SelectiveCutPreReleasesSieve](https://thoth-station.ninja/docs/developers/adviser/thoth.adviser.sieves.html#thoth.adviser.sieves.SelectiveCutPreReleasesSieve)

## Recommendation types

 * latest
 * performance
 * security
 * stable
 * testing

See [this document that describes recommendation types
listed](http://thoth-station.ninja/recommendation-types).

## Related

 * [Selective pre-releases feature in Thoth adviser][1]

[1]: https://thoth-station.ninja/docs/developers/adviser/experimental_features.html#selectively-enabling-pre-releases
