---
title: A backported package was removed from the resolution process
---

One or multiple backported packages from newer Python version were removed.

## Issue description

A backported package was removed from the application stack. Backported
packages are packages that bring features introduced in newer Python versions
(Python standard library) to an older Python release. These packages should be
often installed conditionally by using a proper environment marker (e.g.
``importlib-metadata; python_version < 3.8`` for [``importlib-metadata``
package][importlib_metadata]).

## Affected packages:

 * [``enum34``][enum34]
 * [``functools``][functools32]
 * [``importlib-metadata``][importlib_metadata]
 * [``importlib-resources``][importlib_resources]
 * [``mock``][mock]

## Severity

 * WARNING

## Pipeline units

 * [Enum34BackportSieve](https://thoth-station.ninja/docs/developers/adviser/thoth.adviser.sieves.html#thoth.adviser.sieves.Enum34BackportSieve)
 * [Functools32BackportSieve](https://thoth-station.ninja/docs/developers/adviser/thoth.adviser.sieves.html#thoth.adviser.sieves.Functools32BackportSieve)
 * [ImportlibMetadataBackportSieve](https://thoth-station.ninja/docs/developers/adviser/thoth.adviser.sieves.html#thoth.adviser.sieves.ImportlibMetadataBackportSieve)
 * [ImportlibResourcesBackportSieve](https://thoth-station.ninja/docs/developers/adviser/thoth.adviser.sieves.html#thoth.adviser.sieves.ImportlibResourcesBackportSieve)
 * [MockBackportSieve](https://thoth-station.ninja/docs/developers/adviser/thoth.adviser.sieves.html#thoth.adviser.sieves.MockBackportSieve)

## Recommendation types

This warning

 * latest
 * performance
 * security
 * stable
 * testing

See [this document that describes recommendation types
listed](http://thoth-station.ninja/recommendation-types).

## Related

 * [``enum34`` package][enum34]
 * [``functools`` package][functools32]
 * [``importlib-metadata`` package][importlib_metadata]
 * [``importlib-resources`` package][importlib_resources]
 * [``mock`` package][mock]
 * [Python enum module][py_enum]
 * [Python functools module][py_functools]
 * [Python importlib.metadata][py_importlib_metadata]
 * [Python importlib.resources][py_importlib_resources]
 * [Python unittest.mock][py_mock]

[enum34]: https://pypi.org/project/enum34
[functools32]: https://pypi.org/project/functools32
[importlib_metadata]: https://pypi.org/project/importlib-metadata
[importlib_resources]: https://pypi.org/project/importlib-resources
[mock]: https://pypi.org/project/mock
[py_enum]: https://docs.python.org/3/library/enum.html
[py_functools]: https://docs.python.org/3/library/functools.html
[py_importlib_metadata]: https://docs.python.org/3/library/importlib.metadata.html
[py_importlib_resources]: https://docs.python.org/3/library/importlib.html#module-importlib.resources
[py_mock]: https://docs.python.org/3/library/unittest.mock.html
