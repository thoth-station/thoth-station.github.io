---
title: Considering also tensorflow-gpu package as the runtime environment used provides CUDA
---

The resolution process is also considering [``tensorflow-gpu``][1] package as
an alternative to [``tensorflow``][2] package.

## Issue description

The runtime environment used provides CUDA which enables running
[``tensorflow-gpu``][1]. The resolution process will include package
[``tensorflow-gpu``][1] as an alternative to [``tensorflow``][2].

## Affected packages

 * ``tensorflow``
 * ``tensorflow-gpu``

## Severity

 * WARNING

## Issue fix

Resolver will automatically consider package ``tensorflow-gpu`` as an
alternative to ``tensorflow`` considering the version range specification as
stated for the tensorflow dependency.

## Pipeline units

 * [TensorFlowGPUPseudonym](https://thoth-station.ninja/docs/developers/adviser/thoth.adviser.pseudonyms.html#thoth.adviser.pseudonyms.TensorFlowGPUPseudonym)

## Recommendation types

 * performance
 * security
 * stable
 * testing

See [this document that describes recommendation types
listed](http://thoth-station.ninja/recommendation-types).

## Related

 * [``tensorflow-gpu`` on PyPI][1]
 * [``tensorflow`` on PyPI][2]

[1]: http://pypi.org/project/tensorflow-gpu
[2]: http://pypi.org/project/tensorflow
