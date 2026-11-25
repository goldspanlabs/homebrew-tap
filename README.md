# goldspanlabs/homebrew-tap

The Homebrew tap for [GitCraft](https://github.com/goldspanlabs/gitcraft), a native macOS Git client.

## Install

```bash
brew install --cask goldspanlabs/tap/gitcraft
```

## Upgrade

```bash
brew upgrade --cask gitcraft
```

## First launch

GitCraft isn't notarized by Apple, so the first time you open it macOS says it can't verify the app. Open **System Settings > Privacy & Security** and click **Open Anyway**. You only need to do this once per install.

## Maintenance

`Casks/gitcraft.rb` is updated automatically by the GitCraft release workflow. Edits belong in [`packaging/homebrew/gitcraft.rb`](https://github.com/goldspanlabs/gitcraft/blob/main/packaging/homebrew/gitcraft.rb) in the main repo, not here.
