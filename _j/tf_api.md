---
title: Removing a TensorFlow release as it does not provide required symbols in the exposed API
---

Resolver removed one or multiple releases of TensorFlow that did not provide
API required by the application.

## Issue description

TensorFlow changes its API quite often. To make sure the application runs
correctly, it is required to make sure required symbols are provided by the
Python layer of TensorFlow. The API calls to TensorFlow are automatically
obtained during static source code analysis on the client side and compared
with the database available on the backend to recommend a specific TensorFlow
release to the user.

Resolver found a matching TensorFlow release offering symbols used by the
user's application and discarded one or mutliple releases that did not offer
required library symbols.

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
