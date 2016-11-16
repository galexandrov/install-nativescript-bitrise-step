#!/bin/bash

set -e

echo "Ensure Node 6 LTS"

brew uninstall node
brew tap homebrew/versions
brew install homebrew/versions/node6-lts
node -v

VERSION=""

echo "Available NativeScript versions: $(npm view nativescript versions)"

if [ ! -z "${version}" ] ; then
    VERSION="@${version}"
fi

echo "n
y
y
q
agree
N
n
n" | npm install -g ${npm_options} nativescript${VERSION}
echo n | tns doctor