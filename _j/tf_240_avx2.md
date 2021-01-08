---
title: Upstream TensorFlow=2.4.0 build filtered out as it requires AVX2 instruction set support which is not available
---

The upstream TensorFlow release available on PyPI in version 2.4.0 causes core
dump on ``tensorflow`` import when run on a non-AVX2 enabled CPU.

## Issue description

[TensorFlow==2.4.0 builds available on PyPI][1] are accidentally built with
AVX2 instruction set support. If TensorFlow is run on a CPU which is not AVX2
enabled, it core dumps on the package import.

```console
>>> import tensorflow
Illegal instruction (core dumped)
```

## Affected packages:

 * ``tensorflow==2.4.0``

## Severity

 * WARNING
 
 ## Issue fix

Resolver will try to come up with a different resolution path so that
TensorFlow==2.4.0 will not be part of the resolved software stack.

## Pipeline units

 * [TensorFlow240AVX2IllegalInstructionSieve](https://thoth-station.ninja/docs/developers/adviser/thoth.adviser.sieves.html#thoth.adviser.sieves.TensorFlow240AVX2IllegalInstructionSieve)

## Recommendation types

 * performance
 * stable
 * testing
 * security

See [this document that describes recommendation types
listed](http://thoth-station.ninja/recommendation-types).

## Related

 * [tensorflow==2.4.0 on PyPI][2]
 * [tensorflow/tensorflow#45866][2]
 * [tensorflow/tensorflow#45744][3]

[1]: https://pypi.org/project/tensorflow/2.4.0/
[2]: https://github.com/tensorflow/tensorflow/issues/45866
[3]: https://github.com/tensorflow/tensorflow/issues/45744
