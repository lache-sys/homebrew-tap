cask "authme" do
  version "7.1.2"
  sha256 "ffa5f7bab2aca49541c750d91ca7a9f4631880da1c6f3d7829719dfabe5a4b4f"

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
