cask "ps3-disc-dumper" do
  version "4.4.1"
  sha256 "36b468196dc839e9c8bf2aac7d6b1ee97cecedad750031c6020cdaa925e90ebb"

  url "https://github.com/13xforever/ps3-disc-dumper/releases/download/v#{version}/ps3-disc-dumper_macos_v#{version}.zip"
  name "PS3 Disc Dumper"
  desc "Handy utility to make decrypted PS3 disc dumps"
  homepage "https://github.com/13xforever/ps3-disc-dumper"

  container type: :zip

  app "PS3 Disc Dumper.app"

  caveats do
    requires_rosetta
  end

  zap trash: [
    "~/Library/Preferences/com.github.13xforever.ps3-disc-dumper.plist",
  ]
end
