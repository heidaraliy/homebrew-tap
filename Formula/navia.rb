class Navia < Formula
  desc "Terminal micro-IDE for project navigation, editing, search, and git review"
  homepage "https://github.com/heidaraliy/navia"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/heidaraliy/navia/releases/download/v0.1.2/navia_0.1.2_darwin_arm64.tar.gz"
      sha256 "056477dc91f7854d8544cd97eba13efa82e04bb02e6beb3684dab5fdeb58b883"
    else
      url "https://github.com/heidaraliy/navia/releases/download/v0.1.2/navia_0.1.2_darwin_amd64.tar.gz"
      sha256 "dbe1acb4c5150f3ea9214bb0e4aeb6c35758c7b14aa2a5410ca3c4f03818beaa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/heidaraliy/navia/releases/download/v0.1.2/navia_0.1.2_linux_arm64.tar.gz"
      sha256 "9147c8178000bb53da12b529177ac46d1d967c3ad071ecf3f2bbfcda4749f1d4"
    else
      url "https://github.com/heidaraliy/navia/releases/download/v0.1.2/navia_0.1.2_linux_amd64.tar.gz"
      sha256 "c44b2464d226eb5271a44b91e816ede0d17f7d12d0aca4e9be6f1eb088099bd6"
    end
  end

  def install
    bin.install "navia"
  end

  test do
    assert_match "navia 0.1.2", shell_output("#{bin}/navia --version")
  end
end
