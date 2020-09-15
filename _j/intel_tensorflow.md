---
title: Consider using intel-tensorflow which is optimized for CPU detected in your environment
---

Intel's distribution of TensorFlow can improve performance of machine learning models.

## Issue description

Intel's distribution of TensorFlow can improve performance of machine learning models.

## Affected packages:

 * [``intel-tensorflow``][2]
 * [``tensorflow``][3]
 * [``tensorflow-cpu``][5]

## Severity

 * INFO

## Issue fix

Use the optimized [``intel-tensorflow`` Python package available on PyPI][2]
instead of the upstream [``tensorflow``][3] or [``tensorflow-cpu``][5].

## Pipeline units

* [IntelTensorFlowWrap](https://thoth-station.ninja/docs/developers/adviser/thoth.adviser.wraps.html#module-thoth.adviser.wraps.intel_tensorflow)

## Recommendation types

 * latest
 * performance
 * secure
 * stable
 * testing
 
See [this document that describes recommendation types
listed](http://thoth-station.ninja/recommendation-types).

## Inspections

 * [inspection-2020-08-21][4]

## Related

 * [Intel® Optimization for TensorFlow* Installation Guide][1]
 * [``intel-tensorflow`` package on PyPI][2]
 * [``tensorflow`` package on PyPI][3]
 * [inspection-2020-08-21][4]

[1]: https://software.intel.com/content/www/us/en/develop/articles/intel-optimization-for-tensorflow-installation-guide.html
[2]: https://pypi.org/project/intel-tensorflow/
[3]: https://pypi.org/project/tensorflow/
[4]: https://github.com/thoth-station/dependency-monkey-zoo/tree/master/tensorflow/inspection-2020-08-21
[5]: https://pypi.org/project/tensorflow-cpu/
