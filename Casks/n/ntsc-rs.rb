cask "ntsc-rs" do
  version "0.9.7"
  sha256 "51ca362a9ce8b40cb47804959cbbdc5bb71e79c0f334542dd85fa27faa04c1e0"

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
