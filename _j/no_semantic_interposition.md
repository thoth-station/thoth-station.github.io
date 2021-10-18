---
title: Consider using UBI or RHEL 8.2 with Python 3.8 that has optimized Python interpreter with performance gain up to 30%
---

Using RHEL and UBI 8 container images shipped with Python 3.8 can improve
Python application performance.

## Issue description

See [blog post on developers.redhat.com][1] that discusses about Python 3.8
speed ups. The Python interpreter shipped is built with
``-fno-semantic-interposition``. By enabling this flag during build time, the
application performance can increase by as much as 30%.

## Affected packages

This recommendation is not specific to any package.

## Severity

 * INFO

## Issue fix

Use UBI8 or RHEL8 container images shipped with Pytho 3.8.

## Pipeline units

 * [NoSemanticInterpositionWrap](https://thoth-station.ninja/docs/developers/adviser/thoth.adviser.wraps.html#module-thoth.adviser.wraps.no_semantic_interposition)

## Recommendation types

This message can be produced for all the recommendation types.

See [this document that describes recommendation
types](http://thoth-station.ninja/recommendation-types).

## Inspections

 * [inspection-2020-08-21][2]

## Related

 * [Red Hat Enterprise Linux 8.2 brings faster Python 3.8 run speeds][1]

[1]: https://developers.redhat.com/blog/2020/06/25/red-hat-enterprise-linux-8-2-brings-faster-python-3-8-run-speeds/
[2]: https://github.com/thoth-station/dependency-monkey-zoo/tree/master/tensorflow/inspection-2020-08-21
