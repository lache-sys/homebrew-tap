cask "vulkansdk" do
  version "1.4.341.0"
  sha256 "3b8af7f7db74b4bda02dc91503cec288ab70aebfe273ff98bb8cebabf04b196e"

  url "https://sdk.lunarg.com/sdk/download/#{version}/mac/vulkansdk-macos-#{version}.zip"
  name "Vulkan SDK"
  desc "Cross-platform graphics and compute API"
  homepage "https://vulkan.lunarg.com/sdk/home"

  container type: :zip

  installer manual: "vulkansdk-macOS-#{version}.app"

  zap trash: []
end
