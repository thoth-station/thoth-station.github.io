---
title: Make sure your environment has proper Intel Performance Libraries when using Intel TensorFlow builds
---

Using ``intel-tensorflow`` without Intel Performance libraries installed
significantly degrades TensorFlow performance.

## Issue description

Intel's build of TensorFlow requires Intel® Performance Libraries installed in
the runtime environment. If these libraries are not present, the performance of
TensorFlow is degradated significantly.

## Affected packages

 * ``intel-tensorflow``

## Severity

 * WARNING

## Issue fix

Make sure Intel's Performance Libraries are present in your runtime
environment.

## Pipeline units

 * [MKLThreadsWrap](https://thoth-station.ninja/docs/developers/adviser/thoth.adviser.steps.html#thoth.adviser.steps.MKLThreadsWrap)

## Recommendation types

All types of recommendations available can produce this message:

 * latest
 * performance
 * security
 * stable
 * testing

See [this document that describes recommendation types
listed](http://thoth-station.ninja/recommendation-types).

## Related

 * [Intel® Performance Libraries][1]
 * [Intel® Optimization for TensorFlow Installation Guide][2]
 * [``intel-tensorflow``][3]

[1]: https://software.intel.com/content/www/us/en/develop/tools/performance-libraries.html
[2]: https://software.intel.com/content/www/us/en/develop/articles/intel-optimization-for-tensorflow-installation-guide.html
[3]: http://pypi.org/project/intel-tensorflow
