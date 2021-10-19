---
title: Not recommending TensorFlow in version X as this version is not supported on CUDA in version Y
---

The resolution process did not take into account a specific TensorFlow release
as the given TensorFlow release is not tested with CUDA version present in the
runtime environment.

## Issue description

TensorFlow is supported with specific CUDA versions. See supported
[TensorFlow/CUDA matrix][1] to make sure TensorFlow works with CUDA installed
in the runtime environment.

## Affected packages

 * ``tensorflow``
 * ``tensorflow-gpu``

## Severity

 * WARNING

## Issue fix

The resolution process resolves a TensorFlow release that is suitable for the
runtime environment with a specific CUDA version on its own. Unless TensorFlow
is pinned to a specific release in which case the resolution fails.

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
