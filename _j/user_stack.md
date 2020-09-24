---
title: Scoring user's stack
---

The recommendation engine is scoring the software stack supplied by the user.

## Issue description

The recommendation engine scores software stack supplied by the user. This
software stack is used as a base for a comparison when other stacks are
resolved by Thoth's resolver - the recommendation engine is trying to find a
more suitable software stack for user needs than the one user is using.

This behavior is turned on by default. The user can optionally disable sending
the software stack used to the recommendation engine by supplying
``--no-user-stack`` option to Thamos:

```console
thamos advise --no-user-stack
```

Alternatively, you can set ``THAMOS_NO_USER_STACK=1`` environment variable:

```console
export THAMOS_NO_USER_STACK=1
thamos advise
```

**WARNING:** Resolver does not check if the supplied stack is valid.

## Affected packages:

This informative message is not related to any specific package.

## Severity

 * INFO

## Pipeline units

This informative message is not related to any pipeline unit.

## Recommendation types

The message applies to all pipeline unit types:

 * latest
 * performance
 * security
 * stable
 * testing

See [this document that describes recommendation types
listed](http://thoth-station.ninja/recommendation-types).

## Related

 * [Thamos][1]

[1]: https://thoth-station.ninja/docs/developers/thamos/index.html
