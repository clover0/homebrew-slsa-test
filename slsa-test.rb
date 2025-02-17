# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SlsaTest < Formula
  desc ""
  homepage ""
  version "0.0.65"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/clover0/slsa-test/releases/download/v0.0.65/slsa-test_darwin_amd64.tar.gz"
      sha256 "b4684546b397b51c5c73bb87975a4b1b5bc13d8107dd570c80be436221f95bbd"

      def install
        bin.install "slsa-test"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/clover0/slsa-test/releases/download/v0.0.65/slsa-test_darwin_arm64.tar.gz"
      sha256 "00705ee605b167431b838da7dfb4a05f1a8b279b537b8cbbe8f4520c12d04822"

      def install
        bin.install "slsa-test"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/clover0/slsa-test/releases/download/v0.0.65/slsa-test_linux_amd64.tar.gz"
        sha256 "d39bdbe59b5f27778670ca293679682d5206c770d351b74d5af676429953ec1c"

        def install
          bin.install "slsa-test"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/clover0/slsa-test/releases/download/v0.0.65/slsa-test_linux_arm64.tar.gz"
        sha256 "c89c6e67dd8977fadc7e17fb38312bfc19c94e68954cfe60e507e644ecfbb3e4"

        def install
          bin.install "slsa-test"
        end
      end
    end
  end

  test do
    system "#{bin}/issue-agent --version"
  end
end
