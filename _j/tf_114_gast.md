---
title: TensorFlow in version <=1.14 used overpinned gast package, using gast in version <=0.2.2
---

TensorFlow<=1.14 works with gast<=0.2.2.

## Issue description

If using TensorFlow<=1.14 with a newer release of gast than 0.2.2, the
application can crash with the following error:

```console
AttributeError: module 'gast' has no attribute 'Num'
```

The issue is in update in gast package to 0.3.0 where ``Num`` constant was
removed. See [the corresponding commit][1].

## Affected packages

 * ``tensorflow<=1.14``
 * ``tensorflow-cpu<=1.14``
 * ``tensorflow-gpu<=1.14``
 * ``intel-tensorflow<=1.14``
 * ``gast``

## Severity

 * WARNING

## Issue fix

Resolver will try to come up with a different resolution path so that
TensorFlow<=1.14 will use gast in version <=0.2.2 without the issue described.

## Pipeline units

 * [TensorFlow114GastStep](https://thoth-station.ninja/docs/developers/adviser/thoth.adviser.steps.html#thoth.adviser.steps.TensorFlow114GastStep)

## Recommendation types

This warning can be produced for all the recommendation types, except for
latest:

 * performance
 * security
 * stable
 * testing

See [this document that describes recommendation types
listed](http://thoth-station.ninja/recommendation-types).

## Issues associated

 * [tensorflow/tensorflow#32989][2]
 * [tensorflow/tensorflow#32319][3]

## Related

 * [A link to patch causing ``Num`` constant removal][1]
 * [tensorflow/tensorflow#32989][2]
 * [tensorflow/tensorflow#32319][3]
 * [``tensorflow`` package][4]
 * [``tensorflow-cpu`` package][5]
 * [``tensorflow-gpu`` package][6]
 * [``intel-tensorflow`` package][7]
 * [``gast`` package][8]
 * [Fixed gast dependency in TensorFlow>1.14][9]

[1]: https://github.com/serge-sans-paille/gast/commit/231ee7a1b599b68354acbbf8b8d19acc8a2ce60a#diff-88b99bb28683bd5b7e3a204826ead112R99
[2]: https://github.com/tensorflow/tensorflow/pull/32989
[3]: https://github.com/tensorflow/tensorflow/issues/32319
[4]: https://pypi.org/project/tensorflow
[5]: https://pypi.org/project/tensorflow-cpu
[6]: https://pypi.org/project/tensorflow-gpu
[7]: https://pypi.org/project/intel-tensorflow
[8]: https://pypi.org/project/gast
[9]: https://github.com/tensorflow/tensorflow/pull/32989
