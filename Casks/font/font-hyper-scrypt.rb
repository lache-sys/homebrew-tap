cask "font-hyper-scrypt" do
  version :latest
  sha256 :no_check

  url "https://gitlab.com/StudioTriple/Hyper-Scrypt/-/archive/master/Hyper-Scrypt-master.zip"
  name "Hyper Scrypt"
  homepage "https://velvetyne.fr/fonts/hyper-scrypt"

  font "Hyper-Scrypt-master/fonts/HyperScrypt_Web/HyperScrypt-Stencil_web.otf"
  font "Hyper-Scrypt-master/fonts/HyperScrypt.otf"
end
