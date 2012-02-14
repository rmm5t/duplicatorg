#!/bin/bash

git submodule sync
git submodule update --init --recursive

cd vendor/ReplicatorG
ant jar
cd ../../
