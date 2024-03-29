---
title: The given package has no gathered information regarding security
---

This warning signalizes that the given package was not checked using security scanners.

## Issue description

Thoth's recommendation engine automatically gathers security related
information. The gathered data are used to recommend packages that have low
security risk. See [bandit related scans for more info][1].

## Affected packages

This pipeline unit is not specific to any concrete package.

## Severity

 * WARNING

## Issue fix

The recommendation engine automatically recommends packages with low security
risk. This warning is shown if the recommended software is still considered as
the best found solution even though the security related scans were not
performed.

## Pipeline units

 * [SecurityIndicatorStep](https://thoth-station.ninja/docs/developers/adviser/thoth.adviser.steps.html#module-thoth.adviser.steps.security_indicators)

## Recommendation types

 * security
 * stable

See [this document that describes recommendation types
listed](http://thoth-station.ninja/recommendation-types).

## Related

 * [bandit][1]
 * [cloc][2]

[1]: https://bandit.readthedocs.io/en/latest/
[2]: http://cloc.sourceforge.net/
