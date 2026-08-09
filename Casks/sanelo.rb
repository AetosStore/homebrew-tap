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
    regex(/^v?(\d+(?:\.\d+)*)$/i)
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

  caveats <<~EOS
    Sanelo needs a licence key before it will start dictating.

    It is free during the founding period. Check out at 0,00 EUR and the key
    arrives by email:

      https://store.aetos.pro/product/sanelo-for-mac/

    Then open Sanelo from the menu bar and choose "Licence..." to enter it.

    First launch downloads about 4 GB of speech and cleanup models. After that
    Sanelo transcribes locally and no audio leaves the Mac.
  EOS
end
