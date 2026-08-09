# AetosStore Homebrew Tap

Homebrew casks for [Aetos](https://aetos.pro) apps.

## Sanelo

On-device dictation for macOS. Hold a shortcut, speak, release - your words are
transcribed and cleaned up locally, then pasted into whatever app has focus.
No audio leaves the Mac.

```sh
brew tap aetosstore/tap
brew trust aetosstore/tap
brew install --cask sanelo
```

Homebrew requires you to explicitly trust a third-party tap before it will
install casks from it - that is what the `brew trust` line is for. You only
need to run it once.

### If you get `zsh: command not found: brew`

You either do not have Homebrew, or it is installed but not on your `PATH`.
Check which one:

```sh
ls /opt/homebrew/bin/brew /usr/local/bin/brew
```

If neither path exists, install Homebrew first:

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

If one of them does exist, Homebrew is installed and just needs to be added to
your shell. The Homebrew installer prints this step at the end and it is easy
to miss:

```sh
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
```

Use `/usr/local/bin/brew` instead of `/opt/homebrew/bin/brew` if that was the
path that existed. Then run `brew --version` to confirm, and retry the three
commands above.

Requires an Apple Silicon Mac running macOS 14 (Sonoma) or newer.

## Licence

Installing with Homebrew gets you the app, not a licence. Sanelo asks for a
licence key on first launch, exactly as the direct download does - Homebrew
replaces the download step, not the licence.

The key is free during the founding period. Check out at 0,00 EUR and it
arrives by email:

<https://store.aetos.pro/product/sanelo-for-mac/>

Then open Sanelo from the menu bar and choose `Licence...` to enter it. The
install prints these instructions as well.

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
