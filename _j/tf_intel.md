---
title: Considering also intel-tensorflow package as an alternative to TensorFlow
---

The resolution process is also considering [``intel-tensorflow``][1] package as
an alternative to [``tensorflow``][2] package.

## Issue description

Builds provided by Intel are published on PyPI as [``intel-tensorflow``
package][1]. This package can be used as an alternative to [``tensorflow``][2]
and [``tensorflow-cpu``][3] packages.

## Affected packages:

 * ``tensorflow``
 * ``tensorflow-cpu``
 * ``intel-tensorflow``

## Severity

 * WARNING

## Issue fix

Resolver will automatically consider package ``intel-tensorflow`` as an
alternative to ``tensorflow`` considering the version range specification as
stated for the tensorflow dependency.

## Pipeline units

 * [IntelTensorFlowPseudonym](https://thoth-station.ninja/docs/developers/adviser/thoth.adviser.pseudonyms.html#thoth.adviser.pseudonyms.IntelTensorFlowPseudonym)

## Recommendation types

 * performance
 * security
 * stable
 * testing

See [this document that describes recommendation types
listed](http://thoth-station.ninja/recommendation-types).

## Related

 * [``intel-tensorflow`` on PyPI][1]
 * [``tensorflow`` on PyPI][2]
 * [``tensorflow-cpu`` on PyPI][3]
 * [Intel® Optimization for TensorFlow][4]

[1]: http://pypi.org/project/intel-tensorflow
[2]: http://pypi.org/project/tensorflow
[3]: http://pypi.org/project/tensorflow-cpu
[4]: https://software.intel.com/content/www/us/en/develop/articles/intel-optimization-for-tensorflow-installation-guide.html
