---
title: Last update of the CVE database of known Python package vulnerabilities
---

Information about the last update of CVE database of known Python package
vulnerabilities.

## Issue description

The message provides information about timestamp when the CVE database of known
Python vulnerabilities was updated. The recommendation engine uses
[PyPA/advisory-db][1] which gets periodically updated on the recommendation
engine side. Thoth's background data aggregation logic periodically fetches
the database and provides additional guidance to users with respect to CVE.
The timestamp might give you more information about freshness of the
vulnerability data.

See [What is CVE?][2] for more information on the security and possible
implications.

## Affected packages

If the CVE database is not up to date, the security of all the used packages
can be affected.

## Severity

 * INFO
 * WARNING

## Issue fix

If you find the database not up to date, please [report this issue to Thoth
team][3].

## Recommendation types

All the recommendation types can produce this informative or warning message:

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
 * [thoth-station/support][3]

[1]: https://github.com/pypa/advisory-db
[2]: https://www.redhat.com/en/topics/security/what-is-cve
[3]: https://github.com/thoth-station/support
