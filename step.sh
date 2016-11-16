#!/bin/bash

set -e

VERSION=""

echo "Available NativeScript versions: $(npm view nativescript versions)"

if [ ! -z "${version}" ] ; then
    VERSION="@${version}"
fi

echo '' | npm install -g ${npm_options} nativescript${VERSION}
echo '' | tns doctor