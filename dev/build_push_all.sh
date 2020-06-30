#!/bin/bash
set -o errexit
set -o xtrace

# Order is crucial
cd base
./build.sh
./push.sh
cd ../node
./build.sh
./push.sh
cd ../angular
./build.sh
./push.sh
