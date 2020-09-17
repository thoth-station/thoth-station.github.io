---
title: Recommended TensorFlow that supports CUDA present in the runtime environment 
---

The recommended software stack has a TensorFlow release that is supported with
the CUDA version present in the environment.

## Issue description

TensorFlow releases are compatible with a specific version of CUDA. See
official instructions for [TensorFlow/CUDA version support matrix][1].

The CUDA version used during recommendations corresponds to the one present in
Thoth's ``.thoth.yaml`` file. The CUDA version can be automatically detected,
if not provided explicitly - see [Thamos documentation for more info together
with configuration options that can be used][5]. 

Check resolution log for more information on what TensorFlow releases were
removed from the resolution process:

```console
thamos log
```

## Affected packages:

 * [``tensorflow``][3]
 * [``tensorflow-gpu``][4]

## Severity

 * INFO

## Pipeline units

 * [TensorFlowCUDASieve](https://thoth-station.ninja/docs/developers/adviser/thoth.adviser.sieves.html#thoth.adviser.sieves.tensorflow.TensorFlowCUDASieve)

## Recommendation types

 * performance
 * security
 * stable

See [this document that describes recommendation types
listed](http://thoth-station.ninja/recommendation-types).

## Related

 * [TensorFlow GPU support matrix][1]
 * [TensorFlow installation with GPU][2]
 * [tensorflow][3]
 * [tensorflow-gpu][4]
 * [thamos documentation][5]
 * [thamos][6]

[1]: https://www.tensorflow.org/install/source#gpu
[2]: https://www.tensorflow.org/install/gpu
[3]: https://pypi.org/project/tensorflow
[4]: https://pypi.org/project/tensorflow-gpu
[5]: https://thoth-station.ninja/docs/developers/thamos/index.html
[6]: https://pypi.org/project/thamos
