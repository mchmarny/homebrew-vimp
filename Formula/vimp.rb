# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Vimp < Formula
  desc "Vulnerability Import CLI"
  homepage "https://github.com/mchmarny/vimp"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/mchmarny/vimp/releases/download/v0.4.0/vimp_0.4.0_darwin_all"
    sha256 "192f130194f6d236d1ebab484fdb70ce9a3314c4c5abcc2697f407cde35fdbce"

    def install
      bin.install "vimp_0.4.0_darwin_all" => "vimp"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mchmarny/vimp/releases/download/v0.4.0/vimp_0.4.0_linux_arm64"
      sha256 "178122f0a92b78c3d1847047ba563041c9417558d75646a8f81145e114bd13ec"

      def install
        bin.install "vimp_0.4.0_linux_arm64" => "vimp"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mchmarny/vimp/releases/download/v0.4.0/vimp_0.4.0_linux_amd64"
      sha256 "4a960bf8841584189f8ae042c9d481b7dc5ef2ae3502910300a82cdd55d1934b"

      def install
        bin.install "vimp_0.4.0_linux_amd64" => "vimp"
      end
    end
  end

  test do
    system "#{bin}/vimp --version"
  end
end
