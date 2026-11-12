cask "rusty-backup" do
  arch arm: "arm64", intel: "x64"

  version "2026-11-11-23-10"
  sha256 arm:   "be52b4fe5690673637d78ae9406b5831739f1038b57c0ca767840dd8da62dde6",
         intel: "81554587bfbacd52987664159d06a1ec68acc32a3824bb7a9d772b834e5bad29"

  url "https://github.com/danifunker/rusty-backup/releases/download/v#{version}/Rusty-Backup-macos-#{arch}-#{version}.dmg"
  name "Rusty Backup"
  desc "Backup your vintage computer hard disks using your modern one"
  homepage "https://github.com/danifunker/rusty-backup"

  depends_on macos: :ventura
  container type: :dmg

  app "Rusty Backup.app"

  zap trash: [
    "~/Library/Preferences/io.github.dani.rusty-backup.plist",
  ]
end
