cask "ntsc-rs" do
  version "0.9.4"
  sha256 "fd135bea590f26a5ab485daa42ac80e0158fbf5c07b2d4474498c3f28f30ff07"

  url "https://github.com/ntsc-rs/ntsc-rs/releases/download/v#{version}/ntsc-rs-macos-standalone.pkg"
  name "ntsc-rs"
  desc "Video effect which emulates NTSC and VHS video artifacts"
  homepage "https://github.com/ntsc-rs/ntsc-rs"

  pkg "ntsc-rs-macos-standalone.pkg"

  zap trash: [
    "~/Library/Application Support/ntsc-rs",
    "~/Library/Preferences/rs.ntsc.standalone.plist",
    "/private/var/db/receipts/rs.ntsc.standalone.bom",
    "/private/var/db/receipts/rs.ntsc.standalone.plist",
  ]
end
