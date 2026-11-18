cask "mini-diarium" do
  version "0.8.1"
  sha256 "7b755b263591799569ff79b64bd7c759635d133a57f4daf9a0a79884e75d641e"

  url "https://github.com/fjrevoredo/mini-diarium/releases/download/v#{version}/Mini-Diarium-#{version}-macos.dmg",
      verified: "github.com/fjrevoredo/mini-diarium/"

  name "Fenmark"
  desc "Encrypted, local-first journaling app"
  homepage "https://fenmark.app"

  app "Fenmark.app"

  caveats <<~EOS
    Fenmark is not code-signed. On first launch, macOS Gatekeeper
    may show a "damaged and can't be opened" error.

    To fix this, run the following command in Terminal:
      xattr -cr "/Applications/Fenmark.app"

    Then open the app normally.
  EOS

  zap trash: [
    "~/Library/Application Support/Mini Diarium",
    "~/Library/Preferences/com.mini-diarium.plist",
    "~/Library/Logs/Mini Diarium",
  ]
end
