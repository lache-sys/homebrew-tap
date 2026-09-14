cask "midi2lr" do
  version "6.3.0.1"
  sha256 "40405b5db4413fca7b0d154b62441c3dd465c991cf158c5e5f54a78df987d19b"

  url "https://github.com/rsjaffe/MIDI2LR/releases/download/v#{version}/MIDI2LR-#{version}-osx-installer.dmg"
  name "MIDI2LR"
  desc "App & plugin to remotely control Lightroom with a MIDI controller"
  homepage "https://rsjaffe.github.io/MIDI2LR"

  container type: :dmg

  app "APPlayMIDI.app"

  zap trash: [
  ]
end
