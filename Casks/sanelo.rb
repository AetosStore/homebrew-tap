cask "sanelo" do
  version "22"
  sha256 "8138bb77e4d64e0e7aa02599569456dca0b93be1112410a4c25e26c2d328ac17"

  url "https://github.com/AetosStore/Sanelo/releases/download/v#{version}/Sanelo-#{version}.dmg",
      verified: "github.com/AetosStore/Sanelo/"
  name "Sanelo"
  desc "On-device dictation that transcribes speech and pastes it into the focused app"
  homepage "https://sanelo.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Sanelo.app"

  uninstall quit: "pro.aetos.sanelo"

  zap trash: [
    "~/Library/Application Support/Sanelo",
    "~/Library/Logs/Sanelo.log",
    "~/Library/Preferences/pro.aetos.sanelo.plist",
    "~/Library/Saved Application State/pro.aetos.sanelo.savedState",
  ]
end
