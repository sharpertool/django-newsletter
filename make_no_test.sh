#!/bin/bash

version=$(grep '^\s*version' setup.py | sed 's/version="\(.*\)",/\1/')
git tag --force $version && git push && git push origin --tags --force

rm -f dist/*
python setup.py sdist
twine upload dist/* && rm -f dist/*
