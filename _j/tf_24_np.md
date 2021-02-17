---
title: NumPy==1.19.5 is causing issues when used with TensorFlow 2.4
---

TensorFlow in version 2.4 does not start when NumPy 1.19.5 is installed.

## Issue description

An error occurs on TensorFlow import when TensorFlow is used with
NumPy==1.19.5:

```
import tensorflow as tf

I tensorflow/stream_executor/platform/default/dso_loader.cc:49 I Successfully opened dynamic library libcudart.so.11.0
RuntimeError: module compiled against API version 0xe but this version of numpy is 0xd
RuntimeError: module compiled against API version 0xe but this version of numpy is 0xd
ImportError: numpy.core._multiarray_umath failed to import
ImportError: numpy.core.umath failed to import
F tensorflow/python/lib/core/bfloat16.cc:714 Check failed: PyBfloat16_Type.tp_base != nullptr Aborted (core dumped
```

## Affected packages:

 * ``tensorflow==2.4``
 * ``tensorflow-cpu==2.4``
 * ``tensorflow-gpu==2.4``
 * ``intel-tensorflow==2.4``

## Severity

 * WARNING

## Issue fix

Resolver automatically prevents from resolving NumPy==1.19.5 with TensorFlow.

## Pipeline units

 * [TensorFlow24NumPyStep](https://thoth-station.ninja/docs/developers/adviser/thoth.adviser.steps.html#thoth.adviser.steps.TensorFlow24NumPyStep)

## Recommendation types

 * performance
 * security
 * stable
 * testing

See [this document that describes recommendation types
listed](http://thoth-station.ninja/recommendation-types).

## Issues associated

 * [tensorflow/tensorflow#47117][1]

[1]: https://github.com/tensorflow/tensorflow/issues/47117
