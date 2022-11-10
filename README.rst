thoth-station.github.io
-----------------------

Project Thoth website
================

How to contribute
-----------------------
Parts of the Thoth website are built using Jekyll via a `GitHub action <https://github.com/marketplace/actions/build-jekyll-for-github-pages>`_.
Jekyll is `configured <https://github.com/thoth-station/thoth-station.github.io/blob/master/_config.yml>`_ to 
read markdown files from the `_j <https://github.com/thoth-station/thoth-station.github.io/tree/master/_j>`_ directory and render them in a Jekyll theme.
Jekyll also renders a few other markdown files:

- 404.html
- home.markdown
- justifications.markdown
- recommendation_types.markdown
- helm-charts/README.md

The rest of the website is generated using `Hugo <https://gohugo.io/>`_ where the main index.html file provides linkage to both internal and external pages.

Follow the guidelines outlined the thoth-station `core repository <https://github.com/thoth-station/core/blob/main/CONTRIBUTING.md>`_ to make a contribution.

