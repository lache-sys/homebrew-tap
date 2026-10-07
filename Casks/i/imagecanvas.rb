cask "imagecanvas" do
  version "0.5.0"
  sha256 "5a0fc9a79d838075ed69e3c1b0adbd94bba247c5f2a90883988a3cc0a323d322"

  url "https://github.com/viktorkpkn/ImageCanvas/releases/download/v#{version}/ImageCanvas-#{version}-build4.zip"
  name "ImageCanvas"
  desc "Visual reference board"
  homepage "https://github.com/viktorkpkn/ImageCanvas"

  container type: :zip

  app "ImageCanvas.app"

  zap trash: [
    "~/Library/Application Support/ImageCanvas",
    "~/Library/Preferences/local.imagecanvas.app.plist",
  ]
end
