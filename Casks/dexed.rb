cask "dexed" do
  version "1.0.1"
  sha256 "4269448bc1312424cafd29aff615d891bc5905ebfc54b42ce70c56b9b10dc401"

  url "https://github.com/asb2m10/dexed/releases/download/v#{version}/dexed-#{version}-macos.zip"
  name "Dexed"
  desc "DX7 FM multi plaform/multi format plugin"
  homepage "https://github.com/asb2m10/dexed"

  container type: :zip

  pkg "dexed-macOS-#{version}.pkg"
end
