cask "mini-diarium" do
  version "0.4.7"
  sha256 "c5ceb43b1a3fed27790eedb126c8fcae6ea52368cf4259269a9ed73ab6eab0c5"

  url "https://github.com/fjrevoredo/mini-diarium/releases/download/v#{version}/Mini-Diarium-#{version}-macos.dmg",
      verified: "github.com/fjrevoredo/mini-diarium/"

  name "Mini Diarium"
  desc "Encrypted, local-first journaling app"
  homepage "https://mini-diarium.com"

  app "Mini Diarium.app"

  caveats <<~EOS
    Mini Diarium is not code-signed. On first launch, macOS Gatekeeper
    may show a "damaged and can't be opened" error.

    To fix this, run the following command in Terminal:
      xattr -cr "/Applications/Mini Diarium.app"

    Then open the app normally.
  EOS

  zap trash: [
    "~/Library/Application Support/Mini Diarium",
    "~/Library/Preferences/com.mini-diarium.plist",
    "~/Library/Logs/Mini Diarium",
  ]
end
