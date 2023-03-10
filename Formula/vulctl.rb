# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Vulctl < Formula
  desc "Vulnerability management tool."
  homepage "https://github.com/mchmarny/vulctl"
  version "0.2.7"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/mchmarny/vulctl/releases/download/v0.2.7/vulctl_0.2.7_darwin_all"
    sha256 "efadd353ffdca1da28fe7b51cbc90a62fb7bfed548873d7ac1449886029ff545"

    def install
      bin.install "vulctl_0.2.7_darwin_all" => "vulctl"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/mchmarny/vulctl/releases/download/v0.2.7/vulctl_0.2.7_linux_amd64"
      sha256 "2ce8812a1e24676b6c018525dc08a509c2baf8703169d7f66f3e1b54813d006a"

      def install
        bin.install "vulctl_0.2.7_linux_amd64" => "vulctl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mchmarny/vulctl/releases/download/v0.2.7/vulctl_0.2.7_linux_arm64"
      sha256 "5fa85fcf12783951f303a67cb3e8f08c4ecc3d5cc04da4366275b12662f64315"

      def install
        bin.install "vulctl_0.2.7_linux_arm64" => "vulctl"
      end
    end
  end

  test do
    system "#{bin}/vulctl --version"
  end
end
