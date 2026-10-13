cask "muster" do
  version "1.3.1"
  sha256 "67d873e4c6b6716845866d60158f437e891cc841fc84fe0e5ad01c72746c67bd"

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
