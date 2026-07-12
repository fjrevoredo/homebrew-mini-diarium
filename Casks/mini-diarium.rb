cask "mini-diarium" do
  version "0.6.2"
  sha256 "93356974d052ed67d9722ace48fccac25db4a270681cb5320c5ab1b707c3b619"

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
