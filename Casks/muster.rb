cask "muster" do
  version "1.3.0"
  sha256 "4c9fee45a40d3ddf868ecff139d9e93273814a10aa36d233e3478be13bfacccd"

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
