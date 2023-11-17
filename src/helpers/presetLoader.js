module.exports = function requirePreset(preset) {
  const presetWithoutPrefix = preset.replace('conventional-changelog-', '')
  return require(`./${presetWithoutPrefix}`)
}
