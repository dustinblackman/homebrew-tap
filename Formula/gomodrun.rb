# This file was generated by GoReleaser. DO NOT EDIT.
class Gomodrun < Formula
  desc "The forgotten go tool that executes and caches binaries included in go.mod files"
  homepage "https://github.com/dustinblackman/gomodrun"
  version "0.2.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/dustinblackman/gomodrun/releases/download/v0.2.0/gomodrun_0.2.0_darwin_amd64.tar.gz"
    sha256 "a133fc6bf2d71537463a15478e6b2e5f4151d6bb7ec338c7842c32fe8741fb3a"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/dustinblackman/gomodrun/releases/download/v0.2.0/gomodrun_0.2.0_linux_amd64.tar.gz"
      sha256 "f1eaf1347f52ff34c179960cc215dc7adebb58c695a5bfb26cee4784de068ecf"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/dustinblackman/gomodrun/releases/download/v0.2.0/gomodrun_0.2.0_linux_arm64.tar.gz"
        sha256 "ef047c81ac206ce1ea09d336cbd1e38ad6dbaffd15ac9b9aecc7a6a6191da59e"
      else
        url "https://github.com/dustinblackman/gomodrun/releases/download/v0.2.0/gomodrun_0.2.0_linux_armv6.tar.gz"
        sha256 "fcd41946144459df16838d783d2abd531ff113418c766149f7f831a4f749b5e2"
      end
    end
  end

  def install
    bin.install "gomodrun"
  end

  test do
    system "#{bin}/gomodrun --version"
  end
end
