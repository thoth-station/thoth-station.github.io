---
title: Consider adjusting OMP_NUM_THREADS environment variable for containerized deployments
---

Consider adjusting ``OMP_NUM_THREADS`` environment variable for containerized
deployments, one or more libraries use Intel's MKL that does not detect
correctly resource allocation in the cluster.

## Issue description

OpenMKL detects number of CPUs present on a machine where the application runs.
This generally does not need to correspond to number of CPUs allocated for
containerized applications. Refer to [Kubernetes documentation][4] to get more
information about assigning CPU requests to a pod.

## Affected packages:

 * ``intel-tensorflow``
 * ``pytorch``

## Severity

 * WARNING

## Issue fix

Make sure the ``OMP_NUM_THREADS`` environment variable is set and corresponds
to number of CPUs allocated for the container.

## Pipeline units

 * [MKLThreadsWrap](https://thoth-station.ninja/docs/developers/adviser/thoth.adviser.wraps.html#module-thoth.adviser.wraps.mkl_threads)

## Recommendation types

 * latest
 * performance
 * secure
 * stable
 * testing
 
## Related

 * [OpenMP documentation][1]
 * [``OMP_NUM_THREADS`` - IBM support][2]
 * [Developer Guide for Intel® Math Kernel Library for Linux][3]
 * [Assing CPU resource for pods][4]

[1]: https://www.openmp.org/spec-html/5.0/openmpse50.html
[2]: https://www.ibm.com/support/knowledgecenter/SSGH2K_12.1.0/com.ibm.xlc121.aix.doc/compiler_ref/ruomprun4.html?view=embed
[3]: https://software.intel.com/content/www/us/en/develop/documentation/mkl-linux-developer-guide/top/managing-performance-and-memory/improving-performance-with-threading/setting-the-number-of-threads-using-an-openmp-environment-variable.html
[4]: https://kubernetes.io/docs/tasks/configure-pod-container/assign-cpu-resource/

