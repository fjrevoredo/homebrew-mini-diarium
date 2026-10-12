cask "mini-diarium" do
  version "0.7.5"
  sha256 "1abbbb5412bdfe0da185b7160298abd2b2ffbe7799c6151e0c075de879b0efd0"

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
