cask "agentbar" do
  version "0.4.1"
  sha256 "dbc73fd3bfd4abac277b11305f61ec5062e84518896664e24c862a43999bb2c2"

  url "https://github.com/varenyzc1/agentbar/releases/download/v#{version}/AgentBar-macos.zip",
      verified: "github.com/varenyzc1/agentbar/"
  name "AgentBar"
  desc "macOS menu bar app for tracking local AI coding assistant usage"
  homepage "https://github.com/varenyzc1/agentbar"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "AgentBar.app"

  uninstall quit: "com.agentbar.app"

  zap trash: [
    "~/Library/Application Support/AgentBar",
    "~/Library/Preferences/com.agentbar.app.plist",
  ]
end
