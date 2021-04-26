---
title: Removing a package based on a constraint
---

One or multiple packages were not considered during the resolution based on
constraints supplied.

## Issue description

Constraints provide a mechanism to state dependencies that are known to be
working without a need to adjust direct dependency requirements. This permits
restricting requirements based on their occurrence in the resolved dependency
listing. By providing a constraint on a certain package, the constraint is
applied *only if* the given package is available in the resolved stack. The
constraint does not enforce package presence, unlike for direct requirements.

## Affected packages:

See the resolution log or justification provided to see affected packages.

## Severity

 * INFO

## Pipeline units

 * [ConstraintsSieve](https://thoth-station.ninja/docs/developers/adviser/thoth.adviser.sieves.html#thoth.adviser.sieves.ConstraintsSieve)

## Recommendation types

Constraints are not specific to any recommendation types.  See [this document
that describes all the recommendation types
available](http://thoth-station.ninja/recommendation-types).

## Related

 * [Thoth's resolver experimental features][1]
 * [pip documentation: Constraints files][2]
 * [Airflow's Constraints files][3]
 
[1]: https://thoth-station.ninja/docs/developers/adviser/experimental_features.html#constaints-files
[2]: https://pip.pypa.io/en/stable/user_guide/#constraints-files
[3]: https://airflow.apache.org/docs/apache-airflow/stable/installation.html#constraints-files
