# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Oatmeal < Formula
  desc "Terminal UI to chat with large language models (LLM) using backends such as Ollama, and direct integrations with your favourite editor like Neovim!"
  homepage "https://github.com/dustinblackman/oatmeal"
  version "0.2.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dustinblackman/oatmeal/releases/download/v0.2.5/oatmeal_0.2.5_darwin_arm64.tar.gz"
      sha256 "fc1445113de55484016d64001c42e445baccf7567231b2cdcd7ee366647d1bf4"

      def install
        bin.install "oatmeal"
        bash_completion.install "completions/oatmeal.bash" => "oatmeal"
        zsh_completion.install "completions/oatmeal.zsh" => "_oatmeal"
        fish_completion.install "completions/oatmeal.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/dustinblackman/oatmeal/releases/download/v0.2.5/oatmeal_0.2.5_darwin_amd64.tar.gz"
      sha256 "8c61e05a8ae0d5a4a441192d901527a4ce2da69f8cd98c07b24193b29d7936e7"

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
      url "https://github.com/dustinblackman/oatmeal/releases/download/v0.2.5/oatmeal_0.2.5_linux_arm64.tar.gz"
      sha256 "14cb0600826292e6d25d81b6f922412e5de1f02268915f0148b3904a579b8d4c"

      def install
        bin.install "oatmeal"
        bash_completion.install "completions/oatmeal.bash" => "oatmeal"
        zsh_completion.install "completions/oatmeal.zsh" => "_oatmeal"
        fish_completion.install "completions/oatmeal.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/dustinblackman/oatmeal/releases/download/v0.2.5/oatmeal_0.2.5_linux_amd64.tar.gz"
      sha256 "d8f90501db66af9420b898f0b9678b4be0a3a1ba1b515dc57e8db00d23661726"

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
