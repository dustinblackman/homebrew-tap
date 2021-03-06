# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gomodrun < Formula
  desc "The forgotten go tool that executes and caches binaries"
  homepage "https://github.com/dustinblackman/gomodrun"
  version "0.4.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/dustinblackman/gomodrun/releases/download/v0.4.3/gomodrun_0.4.3_darwin_amd64.tar.gz"
    sha256 "a5ca8a86ad58d203ac19b994d3c1d964562c14345ca307f9e769db970a3908cf"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/dustinblackman/gomodrun/releases/download/v0.4.3/gomodrun_0.4.3_linux_amd64.tar.gz"
    sha256 "2e92b4e1069db7ec891151dbe3acf8dd5bbab01c062eef5b8a310ac33653429e"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/dustinblackman/gomodrun/releases/download/v0.4.3/gomodrun_0.4.3_linux_armv6.tar.gz"
    sha256 "1a2e48d7ef3e4fa5c34305cdecc8722e3557c4cb6d30bfde17ff879875dae68c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/dustinblackman/gomodrun/releases/download/v0.4.3/gomodrun_0.4.3_linux_arm64.tar.gz"
    sha256 "7834c6fa497e9836353781642c3bf804565fb67ce6e34cbc82cf67489a508808"
  end

  def install
    bin.install "gomodrun"
  end

  test do
    system "#{bin}/gomodrun --version"
  end
end
