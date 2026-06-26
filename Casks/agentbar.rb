cask "agentbar" do
  version "0.4.2"
  sha256 "caf9d791b011d2f116054f43ed94cfad06718f4d8705de741a77864d58de3b90"

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
