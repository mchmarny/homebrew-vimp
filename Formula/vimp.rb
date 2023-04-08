# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Vimp < Formula
  desc "Vulnerability Import CLI"
  homepage "https://github.com/mchmarny/vimp"
  version "0.5.6"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/mchmarny/vimp/releases/download/v0.5.6/vimp_0.5.6_darwin_all"
    sha256 "f095120012e473c93b981d5bc09f27c62e4cf6d11553661807634e1c86e71754"

    def install
      bin.install "vimp_0.5.6_darwin_all" => "vimp"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mchmarny/vimp/releases/download/v0.5.6/vimp_0.5.6_linux_arm64"
      sha256 "0fc98b38c7810c1787dd0e531da72e85bd61182158400a5dc7f9b202ed54aef3"

      def install
        bin.install "vimp_0.5.6_linux_arm64" => "vimp"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mchmarny/vimp/releases/download/v0.5.6/vimp_0.5.6_linux_amd64"
      sha256 "a6b2528c2d1bb0fbad93fafa7bd65e57ea4116acc7b7eb731d66d69ee08af636"

      def install
        bin.install "vimp_0.5.6_linux_amd64" => "vimp"
      end
    end
  end

  test do
    system "#{bin}/vimp --version"
  end
end
