---
title: No observations spotted for this stack in Thoth's database
---

Thoth did not provide any additional message to be displayed to the user.

## Issue description

The recommendation engine resolved a software stack but no additional messages
are shown to the user. Even though there are no messages printed, resolver logs
can still give more information about the resolution process and to the
software stack resolved. 

To obtain resolver logs, run:

```console
thamos log
```

Or access the API endpoint:

```console
curl -X GET \
  --header 'Content-Type: application/json' \
  --header 'Accept: application/json' \
  "https://khemenu.thoth-station.ninja/api/v1/advise/python/<adviser-id>/log"
```

## Affected packages:

This message can be shown for any package and does not need to be specific for any package.

## Severity

 * INFO

## Issue fix

This is not an issue.

## Pipeline units

 * NoObservationWrap

## Recommendation types

This message can be produced for all the recommendation types.

See [this document that describes recommendation
types](http://thoth-station.ninja/recommendation-types).
