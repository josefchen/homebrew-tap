cask "muster" do
  version "1.2.0"
  sha256 "563085ea2ac61a38ee87d01a0e401feefecc68b2247112835492e677547712e4"

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
