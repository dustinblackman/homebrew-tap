# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Oatmeal < Formula
  desc "Terminal UI to chat with large language models (LLM) using backends such as Ollama, and direct integrations with your favourite editor like Neovim!"
  homepage "https://github.com/dustinblackman/oatmeal"
  version "0.2.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dustinblackman/oatmeal/releases/download/v0.2.3/oatmeal_0.2.3_darwin_arm64.tar.gz"
      sha256 "4a6d3df5df9f28544b086ee144e97efdc70458884331cc09c61ef1fac67a7c17"

      def install
        bin.install "oatmeal"
        bash_completion.install "completions/oatmeal.bash" => "oatmeal"
        zsh_completion.install "completions/oatmeal.zsh" => "_oatmeal"
        fish_completion.install "completions/oatmeal.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/dustinblackman/oatmeal/releases/download/v0.2.3/oatmeal_0.2.3_darwin_amd64.tar.gz"
      sha256 "63e60538d67b03241af217c788380211b87c1459924dd7d8cfdc73bf37be25fd"

      def install
        bin.install "oatmeal"
        bash_completion.install "completions/oatmeal.bash" => "oatmeal"
        zsh_completion.install "completions/oatmeal.zsh" => "_oatmeal"
        fish_completion.install "completions/oatmeal.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/dustinblackman/oatmeal/releases/download/v0.2.3/oatmeal_0.2.3_linux_arm64.tar.gz"
      sha256 "1d7541f60f538e7e83f48f063036f946a3010d85707ee4836595ab6e08dd5820"

      def install
        bin.install "oatmeal"
        bash_completion.install "completions/oatmeal.bash" => "oatmeal"
        zsh_completion.install "completions/oatmeal.zsh" => "_oatmeal"
        fish_completion.install "completions/oatmeal.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/dustinblackman/oatmeal/releases/download/v0.2.3/oatmeal_0.2.3_linux_amd64.tar.gz"
      sha256 "56f7753d8292885ec18d3935ec83d4c7f5590f07296b8720eb5282e69fc37ae7"

      def install
        bin.install "oatmeal"
        bash_completion.install "completions/oatmeal.bash" => "oatmeal"
        zsh_completion.install "completions/oatmeal.zsh" => "_oatmeal"
        fish_completion.install "completions/oatmeal.fish"
      end
    end
  end

  test do
    system "#{bin}/oatmeal --version"
  end
end
