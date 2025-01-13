# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SlsaTest < Formula
  desc ""
  homepage ""
  version "0.0.63"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/clover0/slsa-test/releases/download/v0.0.63/slsa-test_darwin_amd64.tar.gz"
      sha256 "bbcb558fbaa6e74a0e0b2b90e4fce4cbd63414abee36ddb6320d0c7b6a0c9589"

      def install
        bin.install "slsa-test"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/clover0/slsa-test/releases/download/v0.0.63/slsa-test_darwin_arm64.tar.gz"
      sha256 "8b44022abe837caf73f4122f25ba2f1069ecc83cdc7c51ae99b834b1c3800242"

      def install
        bin.install "slsa-test"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/clover0/slsa-test/releases/download/v0.0.63/slsa-test_linux_amd64.tar.gz"
        sha256 "91b767d1f53e0e42c1138f90d0232153f2251711b13a3463f8b682e3cf1fc868"

        def install
          bin.install "slsa-test"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/clover0/slsa-test/releases/download/v0.0.63/slsa-test_linux_arm64.tar.gz"
        sha256 "f4c3fa22b285f8ef92837fd4520abeea73207422d7c509afe8122114abe21cd5"

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
