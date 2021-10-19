---
title: TensorFlow releases that do not support Python 3.9 filtered out
---

The runtime environment uses Python 3.9. Some TensorFlow releases do not
support this Python version.

## Issue description

Some TensorFlow releases are not compatible with Python 3.9. The resolver will
remove these based on the runtime configuration provided.

## Affected packages

 * ``tensorflow<=2.4``
 * ``intel-tensorflow<=2.4``
 * ``tensorflow-gpu<=2.4``

## Severity

 * WARNING

## Issue fix

Resolver will try to find a different resolution path that will resolve
TensorFlow compatible with the Python interpreter version used.

## Pipeline units

 * [TensorFlowPython39Sieve](https://thoth-station.ninja/docs/developers/adviser/thoth.adviser.steps.html#thoth.adviser.sieves.TensorFlowPython39Sieve)

## Recommendation types

 * performance
 * security
 * stable

See [this document that describes recommendation types
listed](http://thoth-station.ninja/recommendation-types).

## Related

 * [tensorflow/tensorflow#44485](https://github.com/tensorflow/tensorflow/issues/44485)
