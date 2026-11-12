cask "rusty-backup" do
  arch arm: "arm64", intel: "x64"

  version "2026-11-11-23-10"
  sha256 arm:   "f4f8a5955c363cb52f2be2a696cd9c90a9caf1590afe9d8d3ef800952718bef4",
         intel: "341751ef80f6f1bcb26171170c3895e0f0ba0e7e86b60459f655d021595ba951"

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
