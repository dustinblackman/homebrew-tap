# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gomodrun < Formula
  desc "The forgotten go tool that executes and caches binaries"
  homepage "https://github.com/dustinblackman/gomodrun"
  version "0.4.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/dustinblackman/gomodrun/releases/download/v0.4.2/gomodrun_0.4.2_darwin_amd64.tar.gz"
    sha256 "bb2fcddb8b27d477d11db294e5ced99e1c744c571c1429a1fd85236c3f0eb447"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/dustinblackman/gomodrun/releases/download/v0.4.2/gomodrun_0.4.2_linux_amd64.tar.gz"
    sha256 "18a43b2f30e17a60ad52132c13d0eb85b109cda9450b985d22eaca46fcfa2102"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/dustinblackman/gomodrun/releases/download/v0.4.2/gomodrun_0.4.2_linux_armv6.tar.gz"
    sha256 "8f5e83b6b3ea597d5abe2311c57e5e7cb31e8cf736c60d0bcbb01671255ed48f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/dustinblackman/gomodrun/releases/download/v0.4.2/gomodrun_0.4.2_linux_arm64.tar.gz"
    sha256 "623323941e47611903fd45d5e94336c5458b8e55930269f7cce17d555b6cfab3"
  end

  def install
    bin.install "gomodrun"
  end

  test do
    system "#{bin}/gomodrun --version"
  end
end
