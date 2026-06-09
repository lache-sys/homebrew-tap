cask "grandorgue" do
  arch arm: "arm64", intel: "x64"

  version "3.0.1"
  sha256 arm:   "96777c6a3f2480e09397d922e3e0e12f6dfdc8f1df21b97ac567ab3c39073533",
         intel: "ec9cc92941e8d6b6dc0553b789bb7f4af695b8304c071092f95b0a9934faab76"

  url "https://github.com/joanroig/palette-studio/releases/download/v#{version}/palette-studio-v#{version}-macos-#{arch}-installer.dmg"
  name "Palette Studio"
  desc "Palette editor and converter"
  homepage "https://github.com/joanroig/palette-studio"

  container type: :dmg

  app "Palette Studio.app"

  zap trash: [
    "",
  ]

  caveats do
    requires_rosetta
  end
end
