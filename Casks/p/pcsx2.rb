cask "pcsx2" do
  version "2.6.3"
  sha256 "cb7b9e6330f1abf0cf92c94065f7eb983d0fa8affcfe6b0ccb9c2a4ebf067f1a"

  url "https://github.com/PCSX2/pcsx2/releases/download/v2.4.0/pcsx2-v#{version}-macos-Qt.tar.xz"
  name "PCSX2"
  desc "Playstation 2 Emulator"
  homepage "https://github.com/PCSX2/pcsx2"

  container type: :tar

  rename "PCSX2-v#{version}.app" + "PCSX2.app"

  app "PCSX2.app"

  zap trash: [
    "~/Library/Application Support/PCSX2",
    "~/Library/Preferences/net.pcsx2.pcsx2.plist",
  ]

  caveats do
    requires_rosetta
  end
end
