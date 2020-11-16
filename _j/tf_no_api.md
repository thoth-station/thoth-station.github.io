---
title: No TensorFlow symbols API found in the database that would match TensorFlow symbols used
---

Resolver cannot recommend any TensorFlow release based on symbols used as it
did not find one or multiple symbols used in the database.

## Issue description

TensorFlow changes its API quite often. To make sure the application runs
correctly, it is required to make sure required symbols are provided by the
Python layer of TensorFlow. The API calls to TensorFlow are automatically
obtained during static source code analysis on the client side and compared
with the database available on the backend to recommend a specific TensorFlow
release to the user.

The warning produced signalizes that symbols used in the user's code were not
matched with preaggregated API symbols. No recommendations of specific
TensorFlow release will be done but resolver can still resolve a software
stack.

## Affected packages:

 * ``tensorflow``
 * ``tensorflow-gpu``
 * ``tensorflow-cpu``
 * ``intel-tensorflow``

## Severity

 * WARNING

## Issue fix

Resolver will automatically try to find a TensorFlow release that provides
the required API.

## Pipeline units

 * [TensorFlowAPISieve](https://thoth-station.ninja/docs/developers/adviser/thoth.adviser.sieves.html#thoth.adviser.sieves.TensorFlowAPISieve)

## Recommendation types

 * performance
 * security
 * stable

See [this document that describes recommendation types
listed](http://thoth-station.ninja/recommendation-types).

## Related

 * [TensorFlow API docs][1]

[1]: https://www.tensorflow.org/api_docs/python/tf/all_symbols
