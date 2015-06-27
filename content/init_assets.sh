#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

pushd $DIR

if ! npm install; then
  echo "Couldn't install npm dependencies"
  popd
  exit 1
fi

if ! bower install; then
  echo "Couldn't install bower dependencies"
  popd
  exit 1
fi

if ! grunt; then
  echo "Couldn't run grunt"
  popd
  exit 1
fi

popd

