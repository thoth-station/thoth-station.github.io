---
layout: page
title: Recommendation types
permalink: /recommendation-types/
---

To target your requests, Thoth comes with the following list of recommendations:

 * latest
 * security
 * performance
 * stable
 * testing
 
## Latest recommendation type

This recommendation type tries to resolve the latest software stack and has
very limited number of recommendations it addresses. This recommendation type
is suitable if you want to resolve the latest set of packages that should be
installed, similarly as pip/Pipenv/Poetry would do. Note however that the
resolution algorithm used by Thoth is different than the ones in tools stated
so you can end up with a different software stack resolved (generally, this is
very likely to happen).

## Security recommendation type

Security-based recommendation types are suitable for applications that should
not be prone to security issues. This can result in the loss of other aspects of
the software quality, such as performance.

## Performance recommendation type

The second recommendation type will address recommendations to gain performance
in applications (especially AI/ML applications). The resulted software stack
is addressing performance quality as much as possible, other aspects (such as
security) will be ignored.

**NOTE:** The resolution process can take up to 20 minutes depending on the
requirements and system load.

## Stable recommendation type

To gain as much as possible from the recommendation engine, use "stable"
recommendation type. This resolution process tries to come up with the most
stable software stack based on the knowledge base. This resolution process is
the most expensive and takes into account many aspects of the software.

**NOTE:** The resolution process can take up to 20 minutes depending on the
requirements and system load.

## Testing recommendation type

Last, but not least, testing recommendations are suitable for running software
that can be possibly unstable as it was not fully tested and inspected for the
software stack quality. Generaly speaking, this recommendation type is suitable
for experimenting when other, more strict recommendation types, do not resolve
any packages.

**NOTE:** The resolution process can take up to 20 minutes depending on the
requirements and system load.
