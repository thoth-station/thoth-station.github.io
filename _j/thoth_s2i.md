---
title: It is recommended to use Thoth's s2i to have recommendations specific to runtime environment
---

No Thoth S2I base container image is used.

## Issue description

The resolution engine found you are not using [Thoth S2I][1] and recommends to
use one. By doing so, recommendations are specific to the runtime environment
used and can give more insights on the software.

By using Thoth's s2i users can be sure about packages that are available in the
container environment. Moreover, these container images provide information
about ABI symbols available and are well optimized.

## Affected packages:

This issue is not specific to a package.

## Severity

 * INFO

## Issue fix

Use one of the Thoth's S2I container images which are analyzed by Thoth.

## Pipeline units

 * [ThothS2IWrap](https://thoth-station.ninja/docs/developers/adviser/thoth.adviser.wraps.html#thoth.adviser.wraps.ThothS2IWrap)

## Recommendation types

This advise is not specific to any recommendation type.

## Related

 * [Thoth S2I base container images][1]

[1]: https://github.com/thoth-station/s2i-thoth
