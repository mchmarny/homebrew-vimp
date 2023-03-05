# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Vulctl < Formula
  desc "Vulnerability management tool."
  homepage "https://github.com/mchmarny/vulctl"
  version "0.0.5"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/mchmarny/vulctl/releases/download/v0.0.5/vulctl_0.0.5_darwin_all"
    sha256 "25418f16dfdc030d8bc492ea54a873cd503f5b3f75754ce2ab8d2b35f74ccfe8"

    def install
      bin.install "vulctl_0.0.5_darwin_all" => "vulctl"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/mchmarny/vulctl/releases/download/v0.0.5/vulctl_0.0.5_linux_amd64"
      sha256 "a1e3faf2de8b963fa6caeff4909e4f6ee5822d1ba113f57bf4d315efbec3250c"

      def install
        bin.install "vulctl_0.0.5_linux_amd64" => "vulctl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mchmarny/vulctl/releases/download/v0.0.5/vulctl_0.0.5_linux_arm64"
      sha256 "dba6c481bd2e149c3902c9c2d452eb953da1fc1361ebfe2c1831b68c6b9d629b"

      def install
        bin.install "vulctl_0.0.5_linux_arm64" => "vulctl"
      end
    end
  end

  test do
    system "#{bin}/vulctl --version"
  end
end
