# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "lib/private"
class Stew < Formula
  desc "A powerful CLI for the Create and Deploy App project"
  homepage ""
  version "0.0.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/veda-p/stew/releases/download/v0.0.2/stew_0.0.2_macOS_arm64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "bac62dd8fe3f5fefc22854587483b253cb4c8e9769123115e036828b34b9de85"

      def install
        bin.install "stew"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/veda-p/stew/releases/download/v0.0.2/stew_0.0.2_macOS_x86_64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "840ba963ff73c344c160cadad73e9823c2b3cb210701c27f7d0ae7dad1948afb"

      def install
        bin.install "stew"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/veda-p/stew/releases/download/v0.0.2/stew_0.0.2_Linux_x86_64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "383ea626ce9ce8c79cb27cfde1e93a8c202efd2c9f3cc7f22c1bb45ac3caf798"

      def install
        bin.install "stew"
      end
    end
  end

  depends_on "terraform"
  depends_on "git"
  depends_on "go"
end
