# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Vimp < Formula
  desc "Vulnerability Import CLI"
  homepage "https://github.com/mchmarny/vimp"
  version "0.5.3"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/mchmarny/vimp/releases/download/v0.5.3/vimp_0.5.3_darwin_all"
    sha256 "f352718395bc152053066491219345fb93b3419c8bee73f6ea21c7d9ccd3bea0"

    def install
      bin.install "vimp_0.5.3_darwin_all" => "vimp"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/mchmarny/vimp/releases/download/v0.5.3/vimp_0.5.3_linux_amd64"
      sha256 "ce06d3578f432cc3b637fd190e9aa63b5acae26ca3619777fa3002a56f1d6205"

      def install
        bin.install "vimp_0.5.3_linux_amd64" => "vimp"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mchmarny/vimp/releases/download/v0.5.3/vimp_0.5.3_linux_arm64"
      sha256 "9fe53ca186cd8ff62273d09e561ded00c0dfefd26fc1d7d6d2ae2c736f49854b"

      def install
        bin.install "vimp_0.5.3_linux_arm64" => "vimp"
      end
    end
  end

  test do
    system "#{bin}/vimp --version"
  end
end
