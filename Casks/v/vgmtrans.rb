cask "vgmtrans" do
  arch arm: "arm64", intel: "intel"

  version "1.3"
  sha256 arm:   "1934561f05c61930ce5995c2161682c8c418b444639b12096aa4c535ce4f70db",
         intel: "49b1c212c1ca97a25fc4459b6d6fc822b56bef408db4639739335cae02a9833e"

  url "https://github.com/vgmtrans/vgmtrans/releases/download/v#{version}/VGMTrans-v#{version}-macOS-#{arch}.dmg"
  name "VGMTrans"
  desc "Tool to convert proprietary, sequenced videogame music to industry-standard formats"
  homepage "https://github.com/vgmtrans/vgmtrans"

  container type: :dmg

  app "VGMTrans.app"

  zap trash: [
    "~/Library/Preferences/com.vgmtrans.VGMTrans.plist",
    "~/Library/Preferences/org.vgmtrans.vgmtrans.plist",
  ]
end

