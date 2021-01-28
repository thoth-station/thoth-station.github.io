---
title: Turning off GPU specific recommendations as one of GPU and CUDA is not available
---

The resolution will not use GPU information provided.

## Issue description

The resolution engine disabled recommendations specific for GPU enabled
computations. This can happen if no CUDA is available in the environment or GPU
card is not available.

## Severity

 * WARNING

## Issue fix

Use a runtime environment with CUDA properly installed and with GPU card
available.

## Pipeline units

 * [GPUBoot](https://thoth-station.ninja/docs/developers/adviser/thoth.adviser.boots.html#thoth.adviser.boots.GPUBoot)

## Recommendation types

This error or warning can occur for all the recommendation types.

See [this document that describes recommendation
types](http://thoth-station.ninja/recommendation-types).

## Related

 * [How to install Nvidia CUDA on RHEL 8][1]

[1]: https://access.redhat.com/solutions/4134401
