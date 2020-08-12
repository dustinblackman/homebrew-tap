# This file was generated by GoReleaser. DO NOT EDIT.
class Gomodrun < Formula
  desc "The forgotten go tool that executes and caches binaries"
  homepage "https://github.com/dustinblackman/gomodrun"
  version "0.3.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/dustinblackman/gomodrun/releases/download/v0.3.1/gomodrun_0.3.1_darwin_amd64.tar.gz"
    sha256 "4b99189c7a85f2140c9720828a82e80c1b426a53139a6e1f01d795e577727d72"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/dustinblackman/gomodrun/releases/download/v0.3.1/gomodrun_0.3.1_linux_amd64.tar.gz"
      sha256 "436df637df790e41546aa5e8ddcfd08f6b508c9a46d9b8d3aea57f658f49510d"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/dustinblackman/gomodrun/releases/download/v0.3.1/gomodrun_0.3.1_linux_arm64.tar.gz"
        sha256 "e0deea5d9f727c9330af2f47355add40bff9d4d3b27c23ace4ad6dd2d31db88f"
      else
        url "https://github.com/dustinblackman/gomodrun/releases/download/v0.3.1/gomodrun_0.3.1_linux_armv6.tar.gz"
        sha256 "23a74e784fb98e37c91ce46aa8619ad1dfc07694dde1fef7e0112140b9720c3e"
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
