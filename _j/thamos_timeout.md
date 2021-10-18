---
title: Thoth backend did not respond in time
---

The request to Thoth's backend took more than timeout set.

## Issue description

This issue happens if Thoth's backend does not respond in time based on the
client timeout configuration. The root cause can be:

1. Timeout is set too low.
2. Parts of the backend infrastructure might be down, check [Thoth's status page][2] for more info.
3. The service is overloaded.

## Affected packages

This error is not specific to any package.

## Severity

 * ERROR

## Issue fix

Retry the request after some time or increase timeout using ``THAMOS_TIMEOUT``
environment variable.

## Recommendation types

This issue can arise for any recommendation type. See [this document that
describes recommendation types
available](http://thoth-station.ninja/recommendation-types).

## Related

 * [Thamos documentation][1]
 * [Thoth's status page][2]

[1]: https://github.com/thoth-station/thamos/
[2]: https://status.thoth-station.ninja/
