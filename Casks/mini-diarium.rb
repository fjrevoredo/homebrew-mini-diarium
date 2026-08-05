cask "mini-diarium" do
  version "0.6.5"
  sha256 "c57724ce8a641a00b505b8563bc9b2331a21dfa49ee7b0b175769e1eb364f128"

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
