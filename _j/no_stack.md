---
title: Resolver did not find any stack that would satisfy requirements and stack characteristics given the time allocated
---

The resolution process failed as resolver did not find any software stack that
would satisfy user requests.

## Issue description

The resolution process failed as there was no stack resolved. Check the
resolution log to see more details using Thamos CLI:

```console
thamos log
```

Or directly using the API endpoint:

```console
curl -X GET \
  --header 'Content-Type: application/json' \
  --header 'Accept: application/json' \
  "https://khemenu.thoth-station.ninja/api/v1/advise/python/<adviser-id>/log"
```

## Affected packages

This error message produced is not specific to any package.

## Severity

 * ERROR

## Issue fix

First check the resolution log which can give more information on why the
resolution process failed. Based on the messages produced, you can address this
issue by:

### Adjusting requirements

The resolution process might lead to a state when the dependency graph has no
valid resolution given version range requirements of the libraries used
directly or indirectly (transitive dependencies, dependencies of direct
dependencies). In such cases, there is no way to satisfy user requirements for
the application stack.

### Wait for Thoth to ingest data for unknown packages

If dependencies used in the user stack are not known to Thoth's knowledge base,
Thoth needs to ingest data to respond to user requests. This task is done in
the background, transparently to the user. An appropriate message is printed to
logs and the resolution process fails.

### Adjusting the runtime environment used

Some dependencies might not work for the runtime environment used. An example
can be using ``tensorflow-gpu`` in version ``>=1.13.1<=1.15`` in a runtime
environment running CUDA in version ``9``. The given TensorFlow releases are
not supported when running CUDA ``9`` hance the resolution process will not
resolve any ``tensorflow-gpu`` that would satisfy requirements. The solution is
to use a TensorFlow release that supports CUDA 9 if the application uses
TensorFlow specific features and cannot be updated to a newer TensorFlow
release. Another reason can be a package that fails to install to the given
runtime environment used (e.g. missing native dependencies, missing
``manylinux`` support by ``pip`` in the given runtime environment or any other
similar issue).

### Adjusting the recommendation type used

Some recommendation types, such as ``stable``,  might be too strict with
respect to packages that can occur in the application stack. Changing the
recommendation type might help resolving the software stack, considering
implications by using a different recommendation type.

An example could be a "secure" recommendation type request that fails with the
error message described. Pipeline units in the secure recommendation type
discarded packages that should not be used based on the static source code
analysis by Thoth scanners. No "secure" software stack could be produced and
hence switching to another recommendation type (e.g. testing) might result in a
successful resolution.

See [this document that describes recommendation
types](http://thoth-station.ninja/recommendation-types).

### Adjusting the deployment configuration (service provider)

Resolver was not able to resolve any software stack in the CPU time allocated.

See "[Configuring and setting up adviser in a cluster][1]" for more info.

## Pipeline units

This message is not specific to any pipeline unit.

## Recommendation types

This message is not specific to any recommendation type but the recommendation
type might affect the resolution process.

See [this document that describes recommendation
types](http://thoth-station.ninja/recommendation-types).

## Related

 * [Configuring and setting up adviser in a cluster][1]
 * [Recommendation types][2]
 * [A note on shared dependencies][3]
 * [Introduction to Thoth’s adviser principles][4]
 * [Recommendation types available][5]

[1]: https://thoth-station.ninja/docs/developers/adviser/deployment.html
[2]: https://thoth-station.ninja/recommendation-types/
[3]: https://thoth-station.ninja/docs/developers/adviser/compatibility.html#a-note-on-shared-dependencies-in-a-dependency-graph
[4]: https://thoth-station.ninja/docs/developers/adviser/introduction.html
[5]: http://thoth-station.ninja/recommendation-types
