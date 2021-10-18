---
title: No known security vulnerability found for the given release
---

No known security vulnerability found for the given package release.

## Issue description

The recommendation engine did not find any known CVE vulnerabilities for the
given Python package. See [What is CVE?][2] for more information on the
security and possible implications.

**NOTE:** If the recommendation type is set to secure, the recommendation
engine always tries to find a CVE-free software stack.

The recommendation engine uses [PyPA/advisory-db][1] which gets periodically
updated on the recommendation engine side.

## Affected packages

See the justification reported for the package associated with this informative
message.

## Severity

 * INFO

## Pipeline units

 * [CvePenalizationStep](https://thoth-station.ninja/docs/developers/adviser/thoth.adviser.steps.html#thoth.adviser.steps.CvePenalizationStep)

## Recommendation types

All the recommendation types can produce this information:

 * latest
 * performance
 * security
 * stable
 * testing

See [this document that describes recommendation types
listed](http://thoth-station.ninja/recommendation-types).

## Related

 * [PyPA/advisory-db][1]
 * [What is CVE?][2]

[1]: https://github.com/pypa/advisory-db
[2]: https://www.redhat.com/en/topics/security/what-is-cve
