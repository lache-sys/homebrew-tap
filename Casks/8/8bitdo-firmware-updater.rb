cask "8bitdo-firmware-updater" do
  version :latest
  sha256 :no_check

  url "https://download.8bitdo.com/Tools/FirmwareUpdater/8BitDo_Firmware_Updater_macOS.zip"
  name "Firmware Updater"
  desc "Tool for updating firmware on 8BitDo legacy devices."
  homepage "https://support.8bitdo.com/firmware-updater.html"

  container type: :zip

  app "8BitDo Firmware Updater.app"

  zap trash: [
    "~/Library/Caches/com.8bitdo.firmwareupdater",
    "~/Library/HTTPStorages/com.8bitdo.firmwareupdater",
  ]
end
