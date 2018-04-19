#!/bin/bash

set -ex

workdir=$PWD
virtualenv -p python3 venv
venv/bin/pip3 install Sphinx
# TODO: Fixes issues with recent pip updates - once we add support to pip 10+ we can remove this.
venv/bin/pip3 install pip==9.0.3

mkdir -p thoth/
for repo in `cat registered_repos.txt`; do
	git clone https://github.com/thoth-station/${repo}.git clones/${repo}
	pushd clones/${repo}/
	$workdir/venv/bin/pip3 install --no-deps .
	popd
	mv clones/${repo}/thoth/* thoth/
done

touch thoth/__init__.py
venv/bin/sphinx-apidoc -F --module-first -o output thoth -H 'Thoth'
PYTHONPATH="${workdir}/venv/lib/python3.6/site-packages" make -C output html


rm -rf ../docs
mv output/_build/html ../docs
rm -rf output venv clones thoth
# Tell GitHub that we are not using Jekyll
touch ../docs/.nojekyll
