# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Vulctl < Formula
  desc "Vulnerability management tool."
  homepage "https://github.com/mchmarny/vulctl"
  version "0.1.6"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/mchmarny/vulctl/releases/download/v0.1.6/vulctl_0.1.6_darwin_all"
    sha256 "0f178d514f9d52493bec13e82f823f2ecee2b03ebfcbbbe8adc036caeff76a40"

    def install
      bin.install "vulctl_0.1.6_darwin_all" => "vulctl"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mchmarny/vulctl/releases/download/v0.1.6/vulctl_0.1.6_linux_arm64"
      sha256 "330bbfc00ededbf7c36541ad70201f035dd7b6030a2c87fd86330a228c0aedad"

      def install
        bin.install "vulctl_0.1.6_linux_arm64" => "vulctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mchmarny/vulctl/releases/download/v0.1.6/vulctl_0.1.6_linux_amd64"
      sha256 "a582e11b50bf5cb420475a7f5009e4e2215144eef1e171e60d949f971a933000"

      def install
        bin.install "vulctl_0.1.6_linux_amd64" => "vulctl"
      end
    end
  end

  test do
    system "#{bin}/vulctl --version"
  end
end
