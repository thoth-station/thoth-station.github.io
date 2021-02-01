---
title: Thoth S2I s2i-thoth-ubi8-py36
---

An S2I base container image suitable to be used in an OpenShift Source-To-Image
(S2I) build process.

## Description

A base container image used for building and running Python applications. This
base contianer image is based on UBI8 Python container image, running Python
3.6.

## Severity

 * INFO

## Pipeline units

 * [ThothS2IInfoWrap](https://thoth-station.ninja/docs/developers/adviser/thoth.adviser.wraps.html#thoth.adviser.wraps.ThothS2IInfoWrap)

## Related

 * [OpenShift S2I build process][1]
 * [Universal Base Images (UBI): Images, repositories, packages, and source code][2]

[1]: https://docs.openshift.com/container-platform/4.5/builds/build-strategies.html#builds-strategy-s2i-build_build-strategies
[2]: https://access.redhat.com/articles/4238681
