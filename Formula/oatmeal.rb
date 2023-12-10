# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Oatmeal < Formula
  desc "Terminal UI to chat with large language models (LLM) using backends such as Ollama, and direct integrations with your favourite editor like Neovim!"
  homepage "https://github.com/dustinblackman/oatmeal"
  version "0.8.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dustinblackman/oatmeal/releases/download/v0.8.0/oatmeal_0.8.0_darwin_arm64.tar.gz"
      sha256 "23fef6e6a8bcd78d60323edd31fc96c76d0bc6fd9a5bf91ed268b3177cde81f8"

      def install
        bin.install "oatmeal"
        bash_completion.install "completions/oatmeal.bash" => "oatmeal"
        zsh_completion.install "completions/oatmeal.zsh" => "_oatmeal"
        fish_completion.install "completions/oatmeal.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/dustinblackman/oatmeal/releases/download/v0.8.0/oatmeal_0.8.0_darwin_amd64.tar.gz"
      sha256 "3302dd04aba023f7ce1f93e57bbbd5dc0fb75b7c933fdb1dbeee7514d8676bad"

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
      url "https://github.com/dustinblackman/oatmeal/releases/download/v0.8.0/oatmeal_0.8.0_linux_arm64.tar.gz"
      sha256 "f881fe38f165db4f4bfa393d00b3881cab19d58f31208e5c1c476bac6976bdbd"

      def install
        bin.install "oatmeal"
        bash_completion.install "completions/oatmeal.bash" => "oatmeal"
        zsh_completion.install "completions/oatmeal.zsh" => "_oatmeal"
        fish_completion.install "completions/oatmeal.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/dustinblackman/oatmeal/releases/download/v0.8.0/oatmeal_0.8.0_linux_amd64.tar.gz"
      sha256 "6b3de419998f74753de4ddad5ccc6e87c63376a5b02b46a97f0e86472faad68c"

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
