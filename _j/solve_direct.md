---
title: No versions were found for a direct dependency
---

Resolver did not find one or multiple packages in the aggregated knowledge
base.

## Issue description

One or more packages were not found in the knowledge base. This results in a
resolution failure as the application stack cannot be resolved.

## Affected packages

See the resolution log for a list of packages that are not known:

```console
thamos log
```

## Severity

 * ERROR

## Issue fix

Data aggregation pipeline on Thoth side will try to resolve the software
package used in the background. You can come back to the recommendation engine
later.

Check the reported package availability on Python indeces to see availability
of the package and if the given package is a valid candidate for the resolution
process. Reach out to Thoth's API to see all the available indeces:

```console
curl -X GET \
  -H "accept: application/json" \
  "https://khemenu.thoth-station.ninja/api/v1/python-package-index"
```

## Pipeline units

The error produced is not related to any pipeline unit.

## Recommendation types

The error produced is not specific to any recommendation type.

See [this document that describes recommendation
types](http://thoth-station.ninja/recommendation-types).

## Related

 * [Thoth solver][1]
 * [Introduction to Thoth’s adviser principles][2]
 * [PyPI][3]
 * [AICoE Python package index][4]

[1]: https://thoth-station.ninja/docs/developers/solver/index.html
[2]: https://thoth-station.ninja/docs/developers/adviser/introduction.html
[3]: https://pypi.org/
[4]: http://tensorflow.pypi.thoth-station.ninja/
