#!/bin/bash

flake8 newsletter
if [[ $? -ne 0 ]]
then
    echo "Flake 8 failed"
    exit 1
fi

# tox
# if [[ $? -ne 0 ]]
# then
#     echo "Tox tests failed. Please review"
#     exit 2
# fi

./make_no_test.sh
