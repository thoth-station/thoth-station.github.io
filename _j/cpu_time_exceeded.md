---
title: Adviser was killed as allocated CPU time was exceeded
---

As the resolution is done on server side, there are allocated resources to
satisfy user requests for each resolution. This message is reported when the
allocated resources were exceeded during the resolution process.

## Issue description

The error can occur in two main cases:

 * The software stack is too large to be resolved given the server side adviser
   configuration.

 * There are no valid resolutions for the given software stack and adviser
   failed to explore all the states generated to justify this fact.

## Severity

 * WARNING - if any software stack was resolved
 * ERROR - if no software stack was resolved

## Issue fix

Use a smaller software stack or [adjust adviser configuration in deployment][1].

## Pipeline units

This error or warning can occur for all the pipeline units.

## Recommendation types

This error or warning can occur for all the recommendation types.

## Related

 * [Configuring adviser (operational aspect)][1]
 * [Introduction to adviser principles][2]

[1]: https://thoth-station.ninja/docs/developers/adviser/deployment.html#memory-management
[2]: https://thoth-station.ninja/docs/developers/adviser/introduction.html
