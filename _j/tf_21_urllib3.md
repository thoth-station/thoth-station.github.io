---
title: TensorFlow in version 2.1 can cause runtime errors when imported, caused by incompatibility between urllib3 and six packages
---

TensorFlow in version 2.1 (all patch releases affected as well) fails to import
when installed with a specific version of ``urllib3``.

## Issue description

Package ``urllib3`` in some versions is shipped with a bundled version of
``six`` which has it's own mechanism for imports and it's import context
handling. Importing ``urllib3`` in the TensorFlow codebase cases initialization
of the bundled ``six`` module which collides with a subsequent import from
unbundled ``six`` module. See produced backtrace:

```python
>>> import tensorflow
2020-09-07 14:01:42.598319: W tensorflow/stream_executor/platform/default/dso_loader.cc:55] Could not load dynamic library 'libnvinfer.so.6'; dlerror: libnvinfer.so.6: cannot open shared object file: No such file or directory
2020-09-07 14:01:42.598703: W tensorflow/stream_executor/platform/default/dso_loader.cc:55] Could not load dynamic library 'libnvinfer_plugin.so.6'; dlerror: libnvinfer_plugin.so.6: cannot open shared object file: No such file or directory
2020-09-07 14:01:42.598807: W tensorflow/compiler/tf2tensorrt/utils/py_utils.cc:30] Cannot dlopen some TensorRT libraries. If you would like to use Nvidia GPU with TensorRT, please make sure the missing libraries mentioned above are installed properly.
/opt/app-root/lib/python3.6/site-packages/requests/__init__.py:91: RequestsDependencyWarning: urllib3 (1.5) or chardet (2.3.0) doesn't match a supported version!
  RequestsDependencyWarning)
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
  File "/opt/app-root/lib/python3.6/site-packages/tensorflow/__init__.py", line 101, in <module>
    from tensorflow_core import *
  File "/opt/app-root/lib/python3.6/site-packages/tensorflow_core/__init__.py", line 40, in <module>
    from tensorflow.python.tools import module_util as _module_util
  File "/opt/app-root/lib/python3.6/site-packages/tensorflow/__init__.py", line 50, in __getattr__
    module = self._load()
  File "/opt/app-root/lib/python3.6/site-packages/tensorflow/__init__.py", line 44, in _load
    module = _importlib.import_module(self.__name__)
  File "/opt/app-root/lib64/python3.6/importlib/__init__.py", line 126, in import_module
    return _bootstrap._gcd_import(name[level:], package, level)
  File "/opt/app-root/lib/python3.6/site-packages/tensorflow_core/python/__init__.py", line 95, in <module>
    from tensorflow.python import keras
  File "/opt/app-root/lib/python3.6/site-packages/tensorflow_core/python/keras/__init__.py", line 27, in <module>
    from tensorflow.python.keras import models
  File "/opt/app-root/lib/python3.6/site-packages/tensorflow_core/python/keras/__init__.py", line 27, in <module>
    from tensorflow.python.keras import models
  File "/opt/app-root/lib/python3.6/site-packages/tensorflow_core/python/keras/models.py", line 25, in <module>
    from tensorflow.python.keras.engine import network
  File "/opt/app-root/lib/python3.6/site-packages/tensorflow_core/python/keras/engine/network.py", line 46, in <module>
    from tensorflow.python.keras.saving import hdf5_format
  File "/opt/app-root/lib/python3.6/site-packages/tensorflow_core/python/keras/saving/hdf5_format.py", line 32, in <module>
    from tensorflow.python.keras.utils import conv_utils
  File "/opt/app-root/lib/python3.6/site-packages/tensorflow_core/python/keras/utils/conv_utils.py", line 22, in <module>
    from six.moves import range  # pylint: disable=redefined-builtin
ImportError: cannot import name 'range'
>>> from six.moves import range
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
ImportError: cannot import name 'range'
```

## Affected packages:

 * ``tensorflow==2.1``
 * ``urllib3>=1.2<=1.5``
 * ``six`` in any resolved version

## Severity

 * WARNING

## Issue fix

Resolver penalizes resolution ``tensorflow==2.1`` with ``urllib3>=1.2<=1.5``.

## Pipeline units

 * TensorFlow21Urllib3Step

## Recommendation types

All, except latest:

 * performance
 * security
 * stable
 * testing
 
See [this document that describes recommendation types
listed](http://thoth-station.ninja/recommendation-types).

## Inspections

 * [inspection-2020-09-08.1][1]

## Related

 * [Dataset analysis request][2]
 * [Original dataset that spotted the issue (discussion)][3]

[1]: https://github.com/thoth-station/dependency-monkey-zoo/tree/master/tensorflow/inspection-2020-09-08.1
[2]: https://github.com/thoth-station/datasets/issues/16
[3]: https://github.com/thoth-station/notebooks/issues/70#issuecomment-688664537
