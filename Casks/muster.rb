cask "muster" do
  version "1.0.0"
  sha256 "56bbb5c400cc25805b9d2136bf080fd97f12aeba2de8319f5a98b5b728eb3825"

  url "https://github.com/josefchen/muster/releases/download/v#{version}/Muster.dmg"
  name "Muster"
  desc "Menu bar switcher for Claude, Codex and Cursor agent sessions"
  homepage "https://github.com/josefchen/muster"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "Muster.app"

  uninstall quit: "dev.muster.app"

  zap trash: [
    "~/Library/Application Support/Muster",
    "~/Library/Preferences/dev.muster.app.plist",
  ]
end
