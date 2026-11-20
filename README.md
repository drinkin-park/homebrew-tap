# drinkin-park's Homebrew tap

## Soothing Sounds

A menu bar app for macOS Background Sounds: one-click on/off, volume, a sound picker,
and extra ambient sounds. See [drinkin-park/soothing-sounds](https://github.com/drinkin-park/soothing-sounds).

```bash
brew trust --cask drinkin-park/tap/soothing-sounds
brew install --cask drinkin-park/tap/soothing-sounds
```

Homebrew asks you to trust casks from third-party taps once before installing them.

The app isn't notarized by Apple, so the first time you open it macOS blocks it.
Open it once, then allow it in **System Settings → Privacy & Security → Open Anyway**.

Update with `brew upgrade --cask soothing-sounds`. Uninstall with
`brew uninstall --cask soothing-sounds`. Add `--zap` to also remove the imported sounds.
