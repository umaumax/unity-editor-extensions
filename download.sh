#!/usr/bin/env bash

set -eu

current_abs_directory_path=$(cd $(dirname $0) && pwd)
cd ${current_abs_directory_path%/}

rm -rf ./externals
mkdir -p ./externals
pushd ./externals
wget https://raw.githubusercontent.com/hiryma/UnitySamples/master/Misc/ReferenceGraphMaker.cs
wget https://gist.githubusercontent.com/kankikuchi/1164248f1751e7bd39e96671e44a48ef/raw/b32987d0bf42c4aa7dcc7d8a12e17dfb083fe939/AssemblyCompileTimeWindow.cs
wget https://gist.githubusercontent.com/Tenebrous/db7f6e9087d34b73de5d45c82263d131/raw/2ab926c712ee34edcb58f69df920f514b0204a64/ProjectPaneExtensions.cs
popd
