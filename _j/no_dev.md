---
title: Development dependencies will not be taken into account
---

Development dependencies (if any stated) will be used during the resolution
process.

## Issue description

The resolution process will not take into account development dependencies.
This is suitable to reduce the size of [the state space of software stacks
checked][2] and narrow down the resolution process to better results for
packages used for running the application.

If you wish to have your development dependencies resolved, you can pass
``--dev`` dependencies to Thamos CLI:

```console
thamos advise --dev
```

Alternatively, you can set ``THAMOS_DEV=1`` environment variable:

```console
export THAMOS_DEV=1
thamos advise
```

Note this can add significant overhead to the resolution process. See [Thamos
documentation for more info][1].

## Affected packages:

This message is not related to any specific packages.

## Severity

 * WARNING

## Pipeline units

This message is not related to any specific pipeline unit.

## Recommendation types

This message can be produced when any recommendation type is used:

 * latest
 * performance
 * security
 * stable
 * testing

See [this document that describes recommendation types
listed](http://thoth-station.ninja/recommendation-types).

## Related

 * [Thamos][1]
 * [Introduction to Thoth’s adviser principles][2]

[1]: https://thoth-station.ninja/docs/developers/thamos/index.html
[2]: https://thoth-station.ninja/docs/developers/adviser/introduction.html
