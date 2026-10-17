cask "agentbar" do
  version "0.9.0"
  sha256 "fe4b1e76fc4c7b0fb96156c7ef67020bc5ced507ffa6c33c30f51cddec883ae5"

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
