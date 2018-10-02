#!/bin/bash

pushd .

cd ~/bbl-template

eval "$(bbl print-env)"
popd
