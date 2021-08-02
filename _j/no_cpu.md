---
title: No CPU model or no CPU family provided
---

No CPU model or no CPU family was found in ``.thoth.yaml`` configuration file.

## Issue description

Thoth configuration file has missing CPU information. This information is
needed when performing recommendations specific to hardware used (especially
performance related recommendations).

## Affected packages:

This message is not specific to any package.

## Severity

 * WARNING

## Issue fix

Let Thamos CLI discover your CPU and place it to the configuration file
available. See [Thamos documentation for more info][1].

## Recommendation types

This message can be produced for all the recommendation types available:

 * latest
 * performance
 * security
 * stable
 * testing

See [this document that describes recommendation types
listed](http://thoth-station.ninja/recommendation-types).

## Related

 * [Thamos documentation][1]

[1]: https://thoth-station.ninja/docs/developers/thamos/index.html
