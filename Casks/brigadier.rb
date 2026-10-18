cask "brigadier" do
  version "0.1.0-alpha"
  sha256 "73434b625e73bfcc79e7ebf9363d6deb9d19f3f979c0008e57b063a2446f085b"

  url "https://github.com/syncra-studio/brigadier-ai/releases/download/v#{version}/Brigadier-#{version}-universal.dmg"
  name "Brigadier"
  desc "Runs Claude Code and Codex as one team"
  homepage "https://github.com/syncra-studio/brigadier-ai"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+(?:-[\w.]+)?)$/i)
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Brigadier.app"

  uninstall quit: "ai.brigadier.app"

  zap trash: [
    "~/Library/Application Support/ai.brigadier.app",
    "~/Library/Application Support/Brigadier",
    "~/Library/Caches/ai.brigadier.app",
    "~/Library/HTTPStorages/ai.brigadier.app",
    "~/Library/HTTPStorages/ai.brigadier.app.binarycookies",
    "~/Library/Logs/ai.brigadier.app",
    "~/Library/Preferences/ai.brigadier.app.plist",
    "~/Library/Saved Application State/ai.brigadier.app.savedState",
    "~/Library/WebKit/ai.brigadier.app",
  ]
end
