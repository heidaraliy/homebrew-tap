# typed: strict
# frozen_string_literal: true

# Homebrew formula for Navia.
class Navia < Formula
  desc "Terminal micro-IDE for project navigation, editing, search, and git review"
  homepage "https://github.com/heidaraliy/navia"
  version "0.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/heidaraliy/navia/releases/download/v0.1.4/navia_0.1.4_darwin_arm64.tar.gz"
      sha256 "64020d17e163f43555c81dff02af0ad1a77b229834c7f0783d5ace24d8de2d73"
    else
      url "https://github.com/heidaraliy/navia/releases/download/v0.1.4/navia_0.1.4_darwin_amd64.tar.gz"
      sha256 "a3bc1cb89cc0ec939d1c0ed6e42b41c903285778c96710144cfba6e653ac5fd4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/heidaraliy/navia/releases/download/v0.1.4/navia_0.1.4_linux_arm64.tar.gz"
      sha256 "0a1b87c7f5cc3e5f27109b90a9f4371a23b3bde9439bf9905fa34b0c35c1ec39"
    else
      url "https://github.com/heidaraliy/navia/releases/download/v0.1.4/navia_0.1.4_linux_amd64.tar.gz"
      sha256 "e7f0a9cd56c5967123dffa57be46c050efedfca3344491e64965502e537bd3f6"
    end
  end

  def install
    bin.install "navia"
  end

  test do
    assert_match "navia 0.1.4", shell_output("#{bin}/navia --version")
  end
end
