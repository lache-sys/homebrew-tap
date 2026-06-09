class Rosbe < Formula
  desc "ReactOS Build Environment"
  homepage "https://reactos.org/wiki/Build_Environment"
  url "https://twds.dl.sourceforge.net/project/reactos/RosBE-Unix/2.2.1/RosBE-Unix-2.2.1.tar.bz2"
  sha256 "d720c0a77dc08c6da3929fd282de3fe7af6d697b6fb104889a0362e770742565"
  depends_on arch: :x86_64
  def install
    system "./RosBE-Builder.sh", "$(brew --prefix)/bin/RosBE"
  end
  test do
    system "false"
  end
end
