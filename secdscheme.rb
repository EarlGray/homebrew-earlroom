class Secdscheme < Formula
  desc "a small (partially R7RS) Scheme implementation based on the abstract machine SECD"
  homepage "https://github.com/EarlGray/SECD"
  url "https://github.com/EarlGray/SECD/archive/0.1.1.tar.gz"
  version "0.1.1"
  sha256 "2ad7ee14af2633e34a683f778266a58dc0d30be6e5fb55d0c0b8f967017756c8"

  def install
    system "make"
    system "make INSTALL_DIR=#{prefix} install"
  end

  test do
    system "echo '(STOP)' | #{prefix}/bin/secd"
  end
end
