---
title: TensorFlow in version 2.1 can cause runtime errors when running with h5py>=3 caused by library overpinning
---

TensorFlow in version 2.1 overpins [h5py][2] library.

## Issue description

Package [h5py][2] causes runtime errors when installed as a dependency for a
TensorFlow 2.1 stack. See the [reported upstream issue for more info][1].

## Affected packages:

 * ``intel-tensorflow==2.1``
 * ``tensorflow==2.1``
 * ``tensorflow-gpu==2.1``

## Severity

 * WARNING

## Issue fix

Resolver will try to automatically find a resolution path that will not use
[h5py][2] in version >=3.

## Pipeline units

 * [TensorFlow21H5pyStep](https://thoth-station.ninja/docs/developers/adviser/thoth.adviser.steps.html#thoth.adviser.steps.TensorFlow21H5pyStep)

## Recommendation types

 * performance
 * security
 * stable

See [this document that describes recommendation types
listed](http://thoth-station.ninja/recommendation-types).

## Issues associated

 * [tensorflow/tensorflow#44467][1]

## Related

 * [h5py][2]
 * [intel-tensorflow==2.1][3]
 * [tensorflow==2.1][4]
 * [tensorflow-gpu==2.1][5]
 * [tensorflow/tensorflow#44467][1]

[1]: https://github.com/tensorflow/tensorflow/issues/44467
[2]: http://pypi.org/project/h5py
[3]: http://pypi.org/project/intel-tensorflow/2.1.1/
[4]: http://pypi.org/project/tensorflow/2.1.2/
[5]: http://pypi.org/project/tensorflow-gpu/2.1.2/
