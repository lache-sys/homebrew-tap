cask "authme" do
  version "7.1.0"
  sha256 "e13e439683d7f60afab5a6d633e19899630ee3e9399762f495c71076af4e0047"

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
