cask "authme" do
  version "7.0.0"
  sha256 "b29b50d006ff22843093a5806acea37363459f288c806d96cf8ab44aa560b7c8"

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
