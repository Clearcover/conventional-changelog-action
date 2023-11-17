#!/bin/bash

# Find import statement for conventionalcommits preset
importStatement=$(grep "const requirePresetHelper =" ./dist/index.js | cut -d= -f2)

# hard-code presetLoader to load bundled presets
old="presetLoader(require)"
new="presetLoader((preset) => $importStatement(preset))"

perl -pi -e "s/\Q$old\E/$new/g" ./dist/index.js
