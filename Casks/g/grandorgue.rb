cask "grandorgue" do
  arch arm: "arm64", intel: "x86_64"

  version "3.17.0-1"
  sha256 arm:   "48243067a2753a65b54f6ff070a318321b26c36d88a63891035fa39633c36590",
         intel: "758348cebd9947ce0aca2db0e5db820fdbfe8fb6388ba4e67231ca2da1a728df"

  url "https://github.com/GrandOrgue/grandorgue/releases/download/#{version}/grandorgue-#{version}.macOS.#{arch}.dmg"
  name "GrandOrgue"
  desc "Sample based pipe organ simulator"
  homepage "https://github.com/GrandOrgue/grandorgue"

  container type: :dmg

  app "GrandOrgue.app"

  zap trash: [
    "~/Library/Preferences/com.our-organ.GrandOrgue.plist",
    "~/Library/Preferences/GrandOrgueConfig",
  ]
end
