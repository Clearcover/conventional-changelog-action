#!/bin/bash

ncc() {
    preset=$1
    ./node_modules/.bin/ncc build node_modules/conventional-changelog-$preset --source-map -o dist/$preset
}

ncc angular
ncc atom
ncc conventionalcommits
ncc codemirror
ncc corencc ember
ncc eslint
ncc express
ncc jquery
ncc jshint
