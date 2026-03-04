cask "mini-diarium" do
  version "0.4.4"
  sha256 "137647ac8be78095c67df1f2f06500c8f1b1c3b32c3eb296915410a74b646c2e"

  url "https://github.com/fjrevoredo/mini-diarium/releases/download/v#{version}/Mini-Diarium-#{version}-macos.dmg",
      verified: "github.com/fjrevoredo/mini-diarium/"

  name "Mini Diarium"
  desc "Encrypted, local-first journaling app"
  homepage "https://mini-diarium.com"

  app "Mini Diarium.app"

  zap trash: [
    "~/Library/Application Support/Mini Diarium",
    "~/Library/Preferences/com.mini-diarium.plist",
    "~/Library/Logs/Mini Diarium",
  ]
end
