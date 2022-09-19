# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CfAlias < Formula
  desc "Create Cloudflare email alias' directly from your terminal or Alfred."
  homepage "https://github.com/dustinblackman/cf-alias"
  version "0.1.3"

  on_macos do
    url "https://github.com/dustinblackman/cf-alias/releases/download/v0.1.3/cf-alias_0.1.3_darwin_amd64.tar.gz"
    sha256 "da7500d8efa9b193c8bdc557376b4229dbf321f64a35a127867c09fa0d65f584"

    def install
      # Install cf-alias
      bin.install "cf-alias"

      # Install shell completions
      output = Utils.safe_popen_read("#{bin}/cf-alias", "completion", "-s", "bash")
      (bash_completion/"cf-alias").write output

      output = Utils.safe_popen_read("#{bin}/cf-alias", "completion", "-s", "zsh")
      (zsh_completion/"_cf-alias").write output

      output = Utils.safe_popen_read("#{bin}/cf-alias", "completion", "-s", "fish")
      (fish_completion/"cf-alias.fish").write output
    end

    if Hardware::CPU.arm?
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the CfAlias
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dustinblackman/cf-alias/releases/download/v0.1.3/cf-alias_0.1.3_linux_amd64.tar.gz"
      sha256 "bad7b5ceff9c6229bf820fe67b9631f4c6c5329d55295559e9edac18a0f592e9"

      def install
        # Install cf-alias
        bin.install "cf-alias"

        # Install shell completions
        output = Utils.safe_popen_read("#{bin}/cf-alias", "completion", "-s", "bash")
        (bash_completion/"cf-alias").write output

        output = Utils.safe_popen_read("#{bin}/cf-alias", "completion", "-s", "zsh")
        (zsh_completion/"_cf-alias").write output

        output = Utils.safe_popen_read("#{bin}/cf-alias", "completion", "-s", "fish")
        (fish_completion/"cf-alias.fish").write output
      end
    end
  end

  test do
    system "#{bin}/cf-alias --version"
  end
end
