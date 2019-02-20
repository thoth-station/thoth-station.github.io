#!/usr/bin/env python3

import sys
import os


_INDEX_HTML_START = """
<!DOCTYPE html>
<html>
<body>

<h1>Statistics for GitHub repositories of Thoth-Station</h1>

<ul>
"""

_INDEX_HTML_END = """
</ul>

</body>
</html>
"""


def write_index(items):
    with open("index.html", "w") as index_file:
        index_file.write(_INDEX_HTML_START)
        for item in sorted(items):
            index_file.write(f'<li><a href="{item}">{item}</a></li>')


def main():
    items = []
    for item in os.listdir("."):
        if not os.path.isdir(item):
            continue

        items.append(item)

    write_index(items)


if __name__ == "__main__":
    sys.exit(main())
