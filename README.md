# AetosStore Homebrew Tap

Homebrew casks for [Aetos](https://aetos.pro) apps.

## Sanelo

On-device dictation for macOS. Hold a shortcut, speak, release - your words are
transcribed and cleaned up locally, then pasted into whatever app has focus.
No audio leaves the Mac.

```sh
brew install --cask aetosstore/tap/sanelo
```

Requires an Apple Silicon Mac running macOS 14 (Sonoma) or newer.

To upgrade:

```sh
brew upgrade --cask sanelo
```

To remove the app and every file it created, including the downloaded models
(~4 GB):

```sh
brew uninstall --zap --cask sanelo
```

## What is in this repository

Only Homebrew cask definitions - short text files describing where to download
each app and how to install it. No application source code and no binaries.
Releases are hosted at [AetosStore/Sanelo](https://github.com/AetosStore/Sanelo/releases).
