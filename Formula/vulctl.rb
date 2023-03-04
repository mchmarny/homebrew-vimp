# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Vulctl < Formula
  desc "Vulnerability management tool."
  homepage "https://github.com/mchmarny/vulctl"
  version "0.0.3"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/mchmarny/vulctl/releases/download/v0.0.3/vulctl_0.0.3_darwin_all"
    sha256 "969fd984ee67c587a6ce4d1b00838054381191fd940ff5283570370cf0c303e5"

    def install
      bin.install "vulctl_0.0.3_darwin_all" => "vulctl"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mchmarny/vulctl/releases/download/v0.0.3/vulctl_0.0.3_linux_arm64"
      sha256 "1fa01f49bdd248bcf6c591e21ed67fbf63e13401bd8b9dbebd6a94af80f828ad"

      def install
        bin.install "vulctl_0.0.3_linux_arm64" => "vulctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mchmarny/vulctl/releases/download/v0.0.3/vulctl_0.0.3_linux_amd64"
      sha256 "af8a76900bf540c44ddd54e76712da8ebd5d737a9578f3ba5e7d25d3fc70866a"

      def install
        bin.install "vulctl_0.0.3_linux_amd64" => "vulctl"
      end
    end
  end

  test do
    system "#{bin}/vulctl --version"
  end
end
