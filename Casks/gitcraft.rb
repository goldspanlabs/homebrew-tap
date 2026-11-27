# Cask for goldspanlabs/homebrew-tap, generated from packaging/homebrew/gitcraft.rb
# in goldspanlabs/gitcraft by its release workflow, which fills in the version and
# sha256. Edit the template there, not the copy in the tap.
cask "gitcraft" do
  version "1.2.0"
  sha256 "b3f577d7d2f8acd271423dfc3b232304a2212bc4dcadd6e6a2d11c77805dd917"

  url "https://github.com/goldspanlabs/gitcraft/releases/download/v#{version}/GitCraft-v#{version}.dmg"
  name "GitCraft"
  desc "Native Git client"
  homepage "https://github.com/goldspanlabs/gitcraft"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "GitCraft.app"

  zap trash: [
    "~/Library/Preferences/com.goldspanlabs.gitcraft.plist",
    "~/Library/Saved Application State/com.goldspanlabs.gitcraft.savedState",
  ]

  caveats <<~EOS
    GitCraft is not notarized by Apple. The first time you open it, macOS
    will say it can't verify the app. Open System Settings > Privacy & Security
    and click "Open Anyway". You only need to do this once per install.
  EOS
end
