---
title: No more possible paths found for resolution, terminating resolver in iteration N
---

Resolver tried to check all the available paths in the resolution process and
no more internal resolver states were left to be checked.

## Issue description

The resolution process was stopped as the resolver checked all the states
available (see [Thoth's adviser principles][principles] to understand "state"
abstraction). This warning notifies the user about this fact but does not
indicate any failure in the resolution process. The resolution can still be
successful if at least one software stack is produced (otherwise [no stack
produced][no_stack] error is printed).

This warning might also indicate that there is no valid resolution for the
requirements supplied. In such cases, "[no stack was produced][no_stack]" error
message should be printed. See the [linked justification for a
resolution][no_stack].

As number of states kept during the resolution process is configurable,
consider adjusting [beam and it's width][beam] if the resolution process should
take into account more states. This configuration option is not available to
users but is configured by the service operator.

## Affected packages

This warning is not specific to any package.

## Severity

 * WARNING

## Issue fix

If the warning produced results in a subsequent "[No stack was
produced][no_stack]", see resolution stated in [the linked
justification][no_stack].

## Pipeline units

This warning is not specific to any pipeline unit.

## Recommendation types

This warning is not specific to any recommendation type.

See [this document that describes recommendation
types](http://thoth-station.ninja/recommendation-types).

## Related

 * [Beam abstraction and it's width][beam]
 * [Justification for "no stack was produced" error][no_stack]
 * [Thoth's adviser principles to understand the "state" abstraction][principles]

[beam]: https://thoth-station.ninja/docs/developers/adviser/deployment.html#beam-and-it-s-width
[no_stack]: https://thoth-station.ninja/j/no_stack
[principles]: https://thoth-station.ninja/docs/developers/adviser/introduction.html

