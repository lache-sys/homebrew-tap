cask "font-aozora-mincho" do
  version "0.1"
  sha256 "343b19f2b5425b2ea080932326875cbd887ab106212ddce246f184672f8d4c17"

  url "https://web.archive.org/web/20200321102301/http://blueskis.wktk.so/AozoraMincho/archive/v#{version}/aozoramincho-readme-ttf.zip"
  name "Aozora Mincho"
  homepage "https://web.archive.org/web/20200321102301/http://blueskis.wktk.so/AozoraMincho/download.html"

  font "aozoramincho-readme-ttf/AozoraMincho-bold.ttf"
  font "aozoramincho-readme-ttf/AozoraMincho-thin.ttf"
  font "aozoramincho-readme-ttf/AozoraMinchoBlack.ttf"
  font "aozoramincho-readme-ttf/AozoraMinchoHeavy.ttf"
  font "aozoramincho-readme-ttf/AozoraMinchoLight.ttf"
  font "aozoramincho-readme-ttf/AozoraMinchoMedium.ttf"
  font "aozoramincho-readme-ttf/AozoraMinchoRegular.ttf"
end
