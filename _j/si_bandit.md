---
title: Bandit found issues during static security analysis
---

Bandit information gathered indicates a high severity security issue.

## Issue description

Thoth gathers static security information using the [bandit](https://bandit.readthedocs.io/en/latest/) python project.
Bandit gathers security information based on breaking down source code into an abstract syntax tree and looking for
known issues. These issues are classified by severity and confidence — both on a scale: low, medium, high. When
the recommendation type is `security` adviser will remove any packages which have bandit security issues which score
HIGH-HIGH for severity-confidence.

## Affected packages:

This message can be shown for any package and does not need to be specific for any package.

## Severity

 * WARNING

## Issue fix

This is not an issue

## Pipeline units

 * [SecurityIndicators](https://thoth-station.ninja/docs/developers/adviser/thoth.adviser.steps.html#module-thoth.adviser.steps.security_indicators)

## Recommendation types

 * security


See [this document that describes recommendation types
listed](http://thoth-station.ninja/recommendation-types).

## Related

 * [bandit][1]
 * [thoth/si-bandit][2]
 * [thoth/si-aggregator][3]

[1]: https://bandit.readthedocs.io/en/latest/
[2]: https://github.com/thoth-station/si-bandit
[3]: https://github.com/thoth-station/si-aggregator