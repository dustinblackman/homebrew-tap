# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Oatmeal < Formula
  desc "Terminal UI to chat with large language models (LLM) using backends such as Ollama, and direct integrations with your favourite editor like Neovim!"
  homepage "https://github.com/dustinblackman/oatmeal"
  version "0.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dustinblackman/oatmeal/releases/download/v0.2.1/oatmeal_0.2.1_darwin_arm64.tar.gz"
      sha256 "b13f6d7af05257eb4a6762a5f2b9c78959db09236f6a28be755846ac4fa87926"

      def install
        # Install oatmeal
        bin.install "oatmeal"

        # Install shell completions
        output = Utils.safe_popen_read("#{bin}/oatmeal", "completion", "-s", "bash")
        (bash_completion/"oatmeal").write output

        output = Utils.safe_popen_read("#{bin}/oatmeal", "completion", "-s", "zsh")
        (zsh_completion/"_oatmeal").write output

        output = Utils.safe_popen_read("#{bin}/oatmeal", "completion", "-s", "fish")
        (fish_completion/"oatmeal.fish").write output
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/dustinblackman/oatmeal/releases/download/v0.2.1/oatmeal_0.2.1_darwin_amd64.tar.gz"
      sha256 "bd4181268aa28a68064f0c4296f82a2384278a81f1b96a278f5b81cbf31478ac"

      def install
        # Install oatmeal
        bin.install "oatmeal"

        # Install shell completions
        output = Utils.safe_popen_read("#{bin}/oatmeal", "completion", "-s", "bash")
        (bash_completion/"oatmeal").write output

        output = Utils.safe_popen_read("#{bin}/oatmeal", "completion", "-s", "zsh")
        (zsh_completion/"_oatmeal").write output

        output = Utils.safe_popen_read("#{bin}/oatmeal", "completion", "-s", "fish")
        (fish_completion/"oatmeal.fish").write output
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/dustinblackman/oatmeal/releases/download/v0.2.1/oatmeal_0.2.1_linux_arm64.tar.gz"
      sha256 "346bda8450c038a1ced072c3a2a173fcadd0493e5b27bd706a9f7aeef3ae1e24"

      def install
        # Install oatmeal
        bin.install "oatmeal"

        # Install shell completions
        output = Utils.safe_popen_read("#{bin}/oatmeal", "completion", "-s", "bash")
        (bash_completion/"oatmeal").write output

        output = Utils.safe_popen_read("#{bin}/oatmeal", "completion", "-s", "zsh")
        (zsh_completion/"_oatmeal").write output

        output = Utils.safe_popen_read("#{bin}/oatmeal", "completion", "-s", "fish")
        (fish_completion/"oatmeal.fish").write output
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/dustinblackman/oatmeal/releases/download/v0.2.1/oatmeal_0.2.1_linux_amd64.tar.gz"
      sha256 "74b574ebfc6f728dea5a10b718cfed6a20e313beddeb257425ac00045bbaf4a2"

      def install
        # Install oatmeal
        bin.install "oatmeal"

        # Install shell completions
        output = Utils.safe_popen_read("#{bin}/oatmeal", "completion", "-s", "bash")
        (bash_completion/"oatmeal").write output

        output = Utils.safe_popen_read("#{bin}/oatmeal", "completion", "-s", "zsh")
        (zsh_completion/"_oatmeal").write output

        output = Utils.safe_popen_read("#{bin}/oatmeal", "completion", "-s", "fish")
        (fish_completion/"oatmeal.fish").write output
      end
    end
  end

  test do
    system "#{bin}/oatmeal --version"
  end
end
