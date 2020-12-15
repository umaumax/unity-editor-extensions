#!/usr/bin/env bash

set -eu

current_abs_directory_path=$(cd $(dirname $0) && pwd)
cd ${current_abs_directory_path%/}

rm -rf ./externals
mkdir -p ./externals
pushd ./externals
wget https://raw.githubusercontent.com/hiryma/UnitySamples/master/Misc/ReferenceGraphMaker.cs
popd
