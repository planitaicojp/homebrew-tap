# typed: false
# frozen_string_literal: true

class Lm < Formula
  desc "CLI tool for LINE Messaging API"
  homepage "https://planitaicojp.github.io/lm-cli-pages/"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/planitaicojp/lm-cli/releases/download/v0.3.0/lm-cli_0.3.0_darwin_amd64.tar.gz"
      sha256 "934848c9e9290ec119e96ddb3ff6f7155665738699edb4eed7ec6d03ea4422df"

      define_method(:install) do
        bin.install "lm"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/planitaicojp/lm-cli/releases/download/v0.3.0/lm-cli_0.3.0_darwin_arm64.tar.gz"
      sha256 "2ba636f65486f8ccec8f16d68cfeee77b08237c8272563b0f6fbddf575ebadfc"

      define_method(:install) do
        bin.install "lm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/planitaicojp/lm-cli/releases/download/v0.3.0/lm-cli_0.3.0_linux_amd64.tar.gz"
      sha256 "2f4746140059bd629bdee5bb5c06f5a8fcae12614c189b2b11b3e5659c6099e0"

      define_method(:install) do
        bin.install "lm"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/planitaicojp/lm-cli/releases/download/v0.3.0/lm-cli_0.3.0_linux_arm64.tar.gz"
      sha256 "5e8cfc01403bec942e1f285e8ccb3bdd96772a6cd7b00f8836cbf4acfb996b2f"

      define_method(:install) do
        bin.install "lm"
      end
    end
  end
end
