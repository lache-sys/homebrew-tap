cask "rusty-backup" do
  arch arm: "arm64", intel: "x64"

  version "2026-09-12-11-44"
  sha256 arm:   "7bebb93fb5ddd96e12183d0465f516f86f39654065dffa492b29279879589508",
         intel: "0e4ec4d86894a2d0ec10d1b42da17a3330a6e290ff38c0fe4869304a67b0b02e"

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
