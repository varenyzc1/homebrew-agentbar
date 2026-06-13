cask "agentbar" do
  version "0.1.6"
  sha256 "9f333fad40eca14ae90b4afd2cbef7c944ad16475661f9588d41b9842e9d3069"

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
