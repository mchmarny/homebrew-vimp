# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Vulctl < Formula
  desc "Vulnerability management tool."
  homepage "https://github.com/mchmarny/vulctl"
  version "0.1.17"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/mchmarny/vulctl/releases/download/v0.1.17/vulctl_0.1.17_darwin_all"
    sha256 "f0acfb5e38b4f33f0f654be3fbd9d859c4fcf13a32e4637b14cf93e7d8770338"

    def install
      bin.install "vulctl_0.1.17_darwin_all" => "vulctl"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mchmarny/vulctl/releases/download/v0.1.17/vulctl_0.1.17_linux_arm64"
      sha256 "0ab8a57a658fe41d39382d68a12eede4b82bb134db395d1ec4dbf36b58d45213"

      def install
        bin.install "vulctl_0.1.17_linux_arm64" => "vulctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mchmarny/vulctl/releases/download/v0.1.17/vulctl_0.1.17_linux_amd64"
      sha256 "776cacd0209a0752b5a7d390b21ac11f56bcaf60a806325b58b596e32dcd9b9c"

      def install
        bin.install "vulctl_0.1.17_linux_amd64" => "vulctl"
      end
    end
  end

  test do
    system "#{bin}/vulctl --version"
  end
end
