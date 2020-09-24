---
title: Using observations for RHEL instead of UBI, RHEL is ABI compatible with UBI
---

The recommendation engine will use collected knowledge for Red Hat® Enterprise
Linux® (RHEL) instead of the ones from the Universal Base Image (UBI).

## Issue description

Recommendations produced will be compatible with RHEL. This has no
impact if UBI is used as a software environment.

## Affected packages:

This message is not specific to any package.

## Severity

 * WARNING

## Issue fix

State RHEL as a software environment used, instead of UBI.

## Pipeline units

 * [UbiBoot](https://thoth-station.ninja/docs/developers/adviser/thoth.adviser.boots.html#thoth.adviser.boots.UbiBoot)

## Recommendation types

This message can be produced for all the recommendation types available:

 * latest
 * performance
 * security
 * stable
 * testing

See [this document that describes recommendation
types](http://thoth-station.ninja/recommendation-types).

## Related

 * [Introducing the Red Hat Universal Base Image][1]
 * [Red Hat container registry][2]
 * [Thamos documentation][3]

[1]: https://www.redhat.com/en/blog/introducing-red-hat-universal-base-image
[2]: https://catalog.redhat.com/software/containers/explore
[3]: https://thoth-station.ninja/docs/developers/thamos/index.html
