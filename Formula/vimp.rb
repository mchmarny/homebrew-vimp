# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Vimp < Formula
  desc "Vulnerability Import CLI"
  homepage "https://github.com/mchmarny/vimp"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/mchmarny/vimp/releases/download/v0.5.0/vimp_0.5.0_darwin_all"
    sha256 "5ace95a76ee95055c5aaaeedc83c13e670a3cc2c4d173c4ecc5921c1963a11ed"

    def install
      bin.install "vimp_0.5.0_darwin_all" => "vimp"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mchmarny/vimp/releases/download/v0.5.0/vimp_0.5.0_linux_arm64"
      sha256 "1e52b3fc2c94208f5fabe91bd51e95bcd0634cfbd9dd1e70d43dc7617887af60"

      def install
        bin.install "vimp_0.5.0_linux_arm64" => "vimp"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mchmarny/vimp/releases/download/v0.5.0/vimp_0.5.0_linux_amd64"
      sha256 "e87f14d75d4d67ad8cf0dbd8feb1fcd3893846c9da9441e31a72a54e32601eca"

      def install
        bin.install "vimp_0.5.0_linux_amd64" => "vimp"
      end
    end
  end

  test do
    system "#{bin}/vimp --version"
  end
end
