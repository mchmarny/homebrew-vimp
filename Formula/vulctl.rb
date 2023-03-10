# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Vulctl < Formula
  desc "Vulnerability management tool."
  homepage "https://github.com/mchmarny/vulctl"
  version "0.2.11"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/mchmarny/vulctl/releases/download/v0.2.11/vulctl_0.2.11_darwin_all"
    sha256 "dc926cbaecd7684e52aba4e2010a25aea741e9521e98fa8d6973d0f0e0baf55c"

    def install
      bin.install "vulctl_0.2.11_darwin_all" => "vulctl"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mchmarny/vulctl/releases/download/v0.2.11/vulctl_0.2.11_linux_arm64"
      sha256 "22d9073a103e191b94584b0529cdf177e10708a9fec717f72855be1eaf02958f"

      def install
        bin.install "vulctl_0.2.11_linux_arm64" => "vulctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mchmarny/vulctl/releases/download/v0.2.11/vulctl_0.2.11_linux_amd64"
      sha256 "d6b2fa72f352478e371bccb8fa0f21fdcbc105e364afb703b4a91d2886e5b2aa"

      def install
        bin.install "vulctl_0.2.11_linux_amd64" => "vulctl"
      end
    end
  end

  test do
    system "#{bin}/vulctl --version"
  end
end
