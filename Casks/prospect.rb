cask "prospect" do
  version "1.2.1"
  sha256 "6b66d201ed490d5eeedf1d65167cf84cdc2cab93669c97975b9a1ab294ebc9e0"

  url "https://jaromvogel.com/prospect/Prospect_v#{version.sub("\.", "_")}.zip"
  name "Prospect"
  desc "Procreate Viewer"
  homepage "https://jaromvogel.com/prospectapp"

  container type: :zip

  app "Prospect.app"

  zap trash: [
    "~/Library/Application Scripts/com.jaromvogel.Prospect.ProspectPreview",
    "~/Library/Application Scripts/com.jaromvogel.Prospect.ProspectThumb",
    "~/Library/Containers/com.jaromvogel.Prospect.ProspectPreview",
    "~/Library/Containers/com.jaromvogel.Prospect.ProspectThumb",
    "~/Library/HTTPStorages/com.jaromvogel.Prospect",
    "~/Library/Preferences/com.jaromvogel.Prospect.plist",
  ]
end
