cask "magical-fds-plug" do
  version :latest
  sha256 :no_check

  url "https://ymck.net/data/magicalFDSplug/MagicalFDSPlug-mac.zip"
  name "Magical FDS Plug"
  desc "Software-synthesizer reproduces The Disk System (FDS) sound chip"
  homepage "https://ymck.net/app/magical-fds-plug-en"

  container type: :zip

  audio_unit_plugin "MagicalFDSPlug2.component"
  vst3_plugin "MagicalFDSPlug2.vst3"
end
