class Rosbe < Formula
  desc "ReactOS Build Environment"
  homepage "https://reactos.org/wiki/Build_Environment"
  url "https://twds.dl.sourceforge.net/project/reactos/RosBE-Unix/2.2.1/RosBE-Unix-2.2.1.tar.bz2"
  sha256 "d720c0a77dc08c6da3929fd282de3fe7af6d697b6fb104889a0362e770742565"
  def install
    system "./RosBE-Builder.sh", "$(brew --prefix)/bin/RosBE"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test rosbe`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system bin/"program", "do", "something"`.
    system "false"
  end
end
