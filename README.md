# Zap-O-Bar

Downloads, update feed and Homebrew tap for **Zap-O-Bar**, the values of your Netatmo weather stations, air
quality monitors and heating in the macOS menu bar.

## Install

```bash
brew install --cask appnoe/zap-o-bar/zap-o-bar
```

Or [download the disk image](https://github.com/appnoe/homebrew-zap-o-bar/releases/latest/download/Zap-O-Bar.dmg)
of the latest version (all versions: [releases](https://github.com/appnoe/homebrew-zap-o-bar/releases)),
open it and drag Zap-O-Bar to Applications. Zap-O-Bar requires macOS 26 Tahoe or later.

This version updates itself (Settings › General › Updates). It is signed with a Developer ID and notarized by
Apple. Zap-O-Bar is also available in the Mac App Store, which updates its own copy.

More: [appnoe.de](https://www.appnoe.de/apps.html#zap-o-bar) ·
[Privacy policy](https://www.appnoe.de/barometer-privacy.html)

## Contents

- `Casks/zap-o-bar.rb` – the Homebrew cask
- `appcast.xml` – the update feed read by the app (Sparkle)
- Releases – the signed and notarized disk images

This repository is updated automatically by the release workflow of the (private) source repository.
