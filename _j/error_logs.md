---
title: Resolution was terminated based on errors encountered see logs for more info 
---

An error occurred during the resolution process. Most probably, no results
would be produced in such cases.

## Issue description

This issue is very specific to the error raised. Refer to logs to get more information.

## Affected packages:

This error can be raised for any package and does not need to be specific for any package.

## Severity

 * ERROR

## Issue fix

Report the issue with a complete logs obtained using Thamos:

```console
thamos logs
```

Or directly from API endpoints:

```console
curl -X GET --header 'Content-Type: application/json' --header 'Accept: application/json' "https://khemenu.thoth-station.ninja/api/v1/advise/python/<adviser-id>/log"
```

You can submit the issue report to the [thoth-station/adviser issue tracker][1].

## Pipeline units

This error can be raised for any pipeline unit and does not need to be specific
to any concrete pipeline unit. 

## Recommendation types

The error can apply to any recommendation type.

## Related

 * [thoth-station/adviser issue tracker][1]

[1]: https://github.com/thoth-station/adviser/issues
