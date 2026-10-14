cask "muster" do
  version "1.3.2"
  sha256 "273d0fd8bd0ddadb26a6d1bf422419a2807baac5c21cc5fd0b48b652177ed1c8"

  url "https://github.com/josefchen/muster/releases/download/v#{version}/Muster.dmg"
  name "Muster"
  desc "Menu bar switcher for Claude, Codex and Cursor agent sessions"
  homepage "https://agentmuster.app"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Muster.app"

  uninstall quit: "dev.muster.app"

  zap trash: [
    "~/Library/Application Support/Muster",
    "~/Library/Preferences/dev.muster.app.plist",
  ]
end
