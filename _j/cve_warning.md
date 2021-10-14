---
title: A project is known to have vulnerabilities reported in releases
---

The given project has considerably large amount of vulnerabilities reported.

## Issue description

The fact a project has vulnerabilities reported does not mean the given project
has low quality. Note the CVE vulnerabilities are reported to projects that
are actively used and have active community that reports vulnerabilities.

This justification notifies you that the project is known to have
vulnerabilities reported in one or more releases but the vulnerabilities do not
necessary affect the version present in the resolved lock file - see CVE
information in justifications for known vulnerabilities associated with the
resolved version.

If a project has known considerably large vulnerabilities reported, it might
indicate a possible future vulnerability disclosures. It might worth to keep an
eye on the application that uses the given project and be additionally guided
with respect to security. See Thoth's [security
advisories](http://thoth-station.ninja/recommendation-types) for more info.

## Affected packages:

See justification message to see affected package.

## Severity

 * WARNING

## Recommendation types

 * latest
 * performance
 * security
 * stable
 * testing

See [this document that describes recommendation types
listed](http://thoth-station.ninja/recommendation-types).

## Related

 * [PyPA/advisory-db][1]

[1]: https://github.com/pypa/advisory-db
