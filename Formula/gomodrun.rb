# This file was generated by GoReleaser. DO NOT EDIT.
class Gomodrun < Formula
  desc "The forgotten go tool that executes and caches binaries included in go.mod files"
  homepage "https://github.com/dustinblackman/gomodrun"
  version "0.1.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/dustinblackman/gomodrun/releases/download/v0.1.1/gomodrun_0.1.1_darwin_amd64.tar.gz"
    sha256 "a7318068411569c5526dc9020a3b5a458cdb49a9577bc00dae48b7c51edc3f75"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/dustinblackman/gomodrun/releases/download/v0.1.1/gomodrun_0.1.1_linux_amd64.tar.gz"
      sha256 "6468152e545c5f7f277c59cc3d279812f3868a6e9f9da916e9a0475f4af5f4bb"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/dustinblackman/gomodrun/releases/download/v0.1.1/gomodrun_0.1.1_linux_arm64.tar.gz"
        sha256 "a5f1bc18d0ac13a9902e2a44cc2ec0b2e7bc2fde8083a4e283c60a8a4d699ab7"
      else
        url "https://github.com/dustinblackman/gomodrun/releases/download/v0.1.1/gomodrun_0.1.1_linux_armv6.tar.gz"
        sha256 "1ceef43829c6a343614d5f241f54ee0e4684aecba7e795ce6f9a2b607ff8cba4"
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
