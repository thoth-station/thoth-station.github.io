---
title: Unhandled TensorFlow release X, gracefully giving up recommending TensorFlow based on CUDA version Y
---

The given TensorFlow release is not known to the recommendation engine.

## Issue description

A TensorFlow release considered during the resolution process is not known to
the pipeline unit.

This means Thoth's recommendation engine knowledge is not up-to-date with the
most recent TensorFlow releases.

## Affected packages:

 * ``tensorflow``
 * ``tensorflow-gpu``

## Severity

 * WARNING

## Issue fix

Notify Thoth service provider.

## Pipeline units

 * [TensorFlowCUDASieve](https://thoth-station.ninja/docs/developers/adviser/thoth.adviser.sieves.html#thoth.adviser.sieves.TensorFlowCUDASieve)

## Recommendation types

 * performance
 * security
 * stable

See [this document that describes recommendation types
listed](http://thoth-station.ninja/recommendation-types).


## Related

 * [Supported TensorFlow CUDA configurations][1]
 * [``tensorflow``][2]
 * [``tensorflow-gpu``][3]
 * [AICoE Index][4]

[1]: https://www.tensorflow.org/install/source#linux
[2]: https://pypi.org/project/tensorflow
[3]: https://pypi.org/project/tensorflow-gpu
[4]: http://tensorflow.pypi.thoth-station.ninja/
