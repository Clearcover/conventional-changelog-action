#!/bin/bash

# Find import statement for conventionalcommits preset
importStatement=$(grep "const conventionalCommitsPreset =" ./dist/index.js | cut -d= -f2)

# hard-code presetLoader to load bundled conventionalcommits preset
perl -pi -e "s/presetLoader\(require\)/presetLoader\(\(\) => $importStatement\)/g" ./dist/index.js
