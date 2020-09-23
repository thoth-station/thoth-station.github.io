---
title: A security vulnerability found for a package
---

One or more packages in the software stack have security vulnerability.

## Issue description

The recommendation engine found a package that has assigned one or multiple
CVEs. See [What is CVE?][3] for more information on the security and possible
implications.

If the recommendation type is set to secure, the recommendation engine always
tries to find a CVE-free software stack.

The recommendation engine uses [PyUP Safety DB][2] which gets periodically
updated on the recommendation engine side.

## Affected packages:

See the justification reported for the listing of affected packages.

## Severity

 * WARNING

## Issue fix

The recommendation engine tries to find a more suitable software stack that
would be more secure.

If the recommended software stack still has CVEs stated, the resolution process
was not able to come up with a better software stack.

A special case is "secure" recommendation type. In such case, the
recommendation engine always tries to find a CVE-free software stack.

## Pipeline units

 * [CvePenalizationStep](https://thoth-station.ninja/docs/developers/adviser/thoth.adviser.steps.html#thoth.adviser.steps.CvePenalizationStep)

## Recommendation types

All the recommendation types can produce this warning, except for latest:

 * performance
 * security
 * stable
 * testing

See [this document that describes recommendation types
listed](http://thoth-station.ninja/recommendation-types).

## Related

 * [PyUp][1]
 * [PyUp Safety DB][2]
 * [What is CVE?][3]

[1]: https://pyup.io/
[2]: https://github.com/pyupio/safety-db
[3]: https://www.redhat.com/en/topics/security/what-is-cve
