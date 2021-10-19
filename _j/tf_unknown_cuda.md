---
title: Unable to perform recommendations for TensorFlow based on CUDA version: unknown CUDA version supplied 
---

The version identifier of CUDA is not known to the recommendation engine.

## Issue description

The recommendation engine will not take into account CUDA present in the
runtime environment for TensorFlow as the CUDA version identifier supplied is
not known to the recommendation engine.

## Affected packages

 * ``tensorflow``
 * ``tensorflow-gpu``

## Severity

 * WARNING

## Issue fix

Check CUDA version identifier supplied.

If the CUDA version identifier is correct, the recommendation engine has no
applicable knowledge about it thus it cannot recommend a specific TensorFlow
release.

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
