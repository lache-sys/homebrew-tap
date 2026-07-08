cask "authme" do
  version "7.1.1"
  sha256 "6978749eab4f9e7d2b858095155ea58c9c211856fa156b0d3df66d0201e6b39b"

  url "https://github.com/Levminer/authme/releases/download/#{version}/authme-#{version}-macos-universal.dmg"
  name "Authme"
  desc "Simple cross-platform two-factor (2FA) authenticator app for desktop"
  homepage "https://github.com/Levminer/authme"

  container type: :dmg

  app "Authme.app"

  zap trash: [
    "~/Library/Application Support/CrashReporter/authme_CEB13D7E-710B-5BC2-816D-40A289EE2373.plist",
    "~/Library/Caches/com.levminer.authme",
    "~/Library/Preferences/com.levminer.authme.plist",
    "~/Library/WebKit/com.levminer.authme",
  ]
end
