cask "applaymidi" do
  version "1.12"
  sha256 "18b7b6ac039de35009fb2d194c72bf2075b7c6779ef208ec3ea955104e6893d4"

  url "https://github.com/benwiggy/APPlayMIDI/releases/download/v#{version}/APPlayMIDI.app.zip"
  name "APPlayMIDI"
  desc "Simple MIDI file player"
  homepage "https://github.com/benwiggy/APPlayMIDI"

  container type: :zip

  app "APPlayMIDI.app"

  zap trash: [
    "~/Library/Application Scripts/bensoft.APPlayMIDI.qlMIDI",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/bensoft.applaymidi.sfl4",
    "~/Library/Containers/bensoft.APPlayMIDI.qlMIDI",
    "~/Library/Preferences/bensoft.APPlayMIDI.plist",
  ]
end
