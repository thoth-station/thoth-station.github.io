---
title: AICoE TensorFlow builds are optimized for AVX2 instruction sets supported in the CPU identified
---

The CPU model used supports AVX2 instruction set that can speed up TensorFlow
machine learning models. The recommendation is to use AICoE builds of
TensorFlow published at [AICoE index][1].

## Issue description

[TensorFlow builds available on PyPI][4] are not build with compiler flags that
would turn on AVX2 instructions. TensorFlow builds on the [AICoE index][1] are
built with compiler options to enable AVX2 instructions in the resulting
artifact installed.

## Affected packages:

 * ``tensorflow``

## Severity

 * INFO

## Pipeline units

 * [TensorFlowAVX2Step](https://thoth-station.ninja/docs/developers/adviser/thoth.adviser.steps.html#thoth.adviser.steps.TensorFlowAVX2Step)

## Recommendation types

 * performance
 * stable
 * testing
 * security

See [this document that describes recommendation types
listed](http://thoth-station.ninja/recommendation-types).

## Related

 * [AICoE index with optimized TensorFlow builds][1]
 * [TensorFlow's Build from source documentation][2]
 * [tensorflow/tensorflow#24814][3]

[1]: http://tensorflow.pypi.thoth-station.ninja/
[2]: https://www.tensorflow.org/install/source
[3]: https://github.com/tensorflow/tensorflow/issues/24814
[4]: https://pypi.org/project/tensorflow/
