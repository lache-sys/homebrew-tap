cask "grandorgue" do
  arch arm: "arm64", intel: "x86_64"

  version "3.17.3-1"
  sha256 arm:   "161a84d146259eebecd4b28909f3b38a909b0d264f4c2a50b968fd174da9be71",
         intel: "2ad237f50a0ab0284f7508f4f5b136f8576566eedd39dfbb530f93295f019051"

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
