---
title: No CVE timestamp information found in the database
---

No timestamp of the last CVE update has been found in the database.

## Issue description

The recommendation engine uses [PyPA/advisory-db][1] which gets periodically
updated on the recommendation engine side and the update is tracked. If this
warning message is produced, the recommendation engine cannot find timestamp
about the CVE update. This might have security related implications as the
database might not be up to date.

See [What is CVE?][2] for more information on the security and possible
implications.

## Affected packages

If the CVE database is not up to date, the security of all the used packages
can be affected.

## Severity

 * WARNING

## Issue fix

Please [contact Thoth team][3] with the issue description for additional help.

## Recommendation types

All the recommendation types can produce this warning:

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
