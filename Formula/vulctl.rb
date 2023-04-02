# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Vulctl < Formula
  desc "Vulnerability management tool."
  homepage "https://github.com/mchmarny/vulctl"
  version "0.3.6"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/mchmarny/vulctl/releases/download/v0.3.6/vulctl_0.3.6_darwin_all"
    sha256 "deeb442fab6a6c8a3aa7354e5d5d2989981156f1c842885ebbf66d9049855f8d"

    def install
      bin.install "vulctl_0.3.6_darwin_all" => "vulctl"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mchmarny/vulctl/releases/download/v0.3.6/vulctl_0.3.6_linux_arm64"
      sha256 "c48e81f63985e5d19f4388067d1e37c40a46f1bc491184a474906860d1a5c524"

      def install
        bin.install "vulctl_0.3.6_linux_arm64" => "vulctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mchmarny/vulctl/releases/download/v0.3.6/vulctl_0.3.6_linux_amd64"
      sha256 "25d567c7b2253df1a872c509158eff14f8899c640ff8ac1606144343e992bd74"

      def install
        bin.install "vulctl_0.3.6_linux_amd64" => "vulctl"
      end
    end
  end

  test do
    system "#{bin}/vulctl --version"
  end
end
