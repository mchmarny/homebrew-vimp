# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Vulctl < Formula
  desc "Vulnerability management tool."
  homepage "https://github.com/mchmarny/vulctl"
  version "0.3.8"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/mchmarny/vulctl/releases/download/v0.3.8/vulctl_0.3.8_darwin_all"
    sha256 "34a3afc5be11440ef119b76b3b59e8ca6793c01ad44daf08dd7c553587089a8c"

    def install
      bin.install "vulctl_0.3.8_darwin_all" => "vulctl"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/mchmarny/vulctl/releases/download/v0.3.8/vulctl_0.3.8_linux_amd64"
      sha256 "f26ffe1f744bba1b01491e12e97dae136b0650d397d5d64229913aab454049ac"

      def install
        bin.install "vulctl_0.3.8_linux_amd64" => "vulctl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mchmarny/vulctl/releases/download/v0.3.8/vulctl_0.3.8_linux_arm64"
      sha256 "10ad931b5619e10bb0acbaf64ab0944920c9b59f25ffa55a7e1e74fa7a76247a"

      def install
        bin.install "vulctl_0.3.8_linux_arm64" => "vulctl"
      end
    end
  end

  test do
    system "#{bin}/vulctl --version"
  end
end
