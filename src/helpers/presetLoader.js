const conventionalCommitsPreset = require('conventional-changelog-conventionalcommits')
const angularPreset = require('conventional-changelog-conventionalcommits')

module.exports = function requirePreset(preset) {
  const presetWithoutPrefix = preset.replace('conventional-changelog-', '')
  switch (presetWithoutPrefix) {
    case 'conventionalcommits':
      return conventionalCommitsPreset
    case 'angular':
      return angularPreset
    default:
      throw new Error(`Preset "${presetWithoutPrefix}" is not supported`)
  }
}
