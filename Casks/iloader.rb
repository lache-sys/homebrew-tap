cask "iloader" do
  version "1.1.6"
  sha256 "d59c3702f43772852f001776b5271563c885ee2f6e68d3811bc2624cfef9b8fc"

  url "https://github.com/nab138/iloader/releases/download/v#{version}/iloader-darwin-universal.dmg"
  name "iloader"
  desc "User friendly sideloader"
  homepage "https://github.com/nab138/iloader"

  container type: :dmg

  app "iloader.app"

  zap trash: [
    "~/Library/Application Support/me.nabdev.iloader",
    "~/Library/Caches/me.nabdev.iloader",
    "~/Library/WebKit/me.nabdev.iloader",
  ]
end
