class Mdxplay < formula
  desc "MDX music data player"
  homepage "https://web.archive.org/web/20130217181839/http://homepage3.nifty.com/studiobreeze/software/mdxplay-e.html"
  url "https://web.archive.org/web/20130217181839/http://homepage3.nifty.com/studiobreeze/software/bin/mdxplay-20070206.tar.gz"
  sha256 "84033159108eaabf532aa8ecb798c3332d630f8cea862e485d43638ec6ee2191"
  license "gpl-2.0-only"

  def install
    system "./configure", "--disable-silent-rules", *std_configure_args
    system "make"
    system "make", "install"
  end

  test do
    system "false"
  end
end
