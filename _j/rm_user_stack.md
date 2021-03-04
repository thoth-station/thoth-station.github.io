---
title: User's stack was removed
---

The software stack supplied by the user was removed.

## Issue description

The software stack supplied by the user was not considered as a good solution.

This can happen if the user's stack was not accepted by the scoring pipeline.
In such case, see the resolution log for more information.

This message can be also produced if there were detected changes in the user's
stack based on hash computed on requirements file.

## Affected packages:

See the resolution log for more info.

## Severity

 * WARNING

## Issue fix

The resolution process can come up with a more suited software stack for user
needs. If that is not the case, follow [recommendations when no stack is
produced][1].

## Pipeline units

This message is not specific to any pipeline unit if the stack was removed
during the scoring.

If the scoring pipeline detects changes in user's stack
[PipfileHashBoot](https://thoth-station.ninja/docs/developers/adviser/thoth.adviser.boots.html#thoth.adviser.boots.PipfileHashBoot)
is responsible for printing the message.

## Recommendation types

This message applies to all the recommendation types:

 * latest
 * performance
 * security
 * stable
 * testing

See [this document that describes recommendation types
listed](http://thoth-station.ninja/recommendation-types).

## Related

 * [A justification for no software stack resolved][1]
 * [User stack scoring][2]

[1]: https://thoths-tation.ninja/j/no_stack
[2]: https://thoth-station.ninja/j/user_stack
