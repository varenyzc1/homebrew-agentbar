cask "agentbar" do
  version "0.8.0"
  sha256 "0f0d08f085175a35eef53d497dace86ee4cfb93f1b064f5467549d2e06b89e9e"

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
