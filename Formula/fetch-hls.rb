# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FetchHls < Formula
  desc "A quick and lazy solution to proxy HLS streams to external players (Chromecast, VLC)."
  homepage "https://github.com/dustinblackman/fetch-hls"
  version "0.1.5"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/dustinblackman/fetch-hls/releases/download/v0.1.5/fetch-hls_0.1.5_darwin_amd64.tar.gz"
    sha256 "e207ff616f08c62aaaa8c216114642af873a4715069654397baa6bc065be4e22"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/dustinblackman/fetch-hls/releases/download/v0.1.5/fetch-hls_0.1.5_linux_amd64.tar.gz"
    sha256 "244a7b17f2a717f54c03c3b1791ea3e9dccf9d36fb7c448cc940f38da33eb2b0"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/dustinblackman/fetch-hls/releases/download/v0.1.5/fetch-hls_0.1.5_linux_armv6.tar.gz"
    sha256 "0db56f98397df2cf6dc68a49974bf01971f0d25bfc4a6dd98431af59709f53c1"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/dustinblackman/fetch-hls/releases/download/v0.1.5/fetch-hls_0.1.5_linux_arm64.tar.gz"
    sha256 "ba738a600331e2a177770cce56b9befd8ca2b0f2387772a94d42e94dd5b0899f"
  end

  def install
    bin.install "fetch-hls"
  end

  test do
    system "#{bin}/fetch-hls --version"
  end
end
