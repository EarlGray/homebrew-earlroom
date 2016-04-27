class Secdscheme < Formula
  desc "a small (partially R7RS) Scheme implementation based on the abstract machine SECD"
  homepage "https://github.com/EarlGray/SECD"
  url "https://github.com/EarlGray/SECD/archive/0.1.0.tar.gz"
  version "0.1.0"
  sha256 "d785fb818b0ee129522c9bb095a2cfd010fad17c9de6f0d64145fa5d18b4b9c0"

  def install
    system "make"
    system "make INSTALL_DIR=#{prefix} install"
  end

  test do
    system "echo '(STOP)' | #{prefix}/bin/secd"
  end
end
