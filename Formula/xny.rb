class Xny < Formula
  desc "Command-line client for XnY Cloud"
  homepage "https://docs.xny.ai/developer/cli"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/humanbased-ai/homebrew-tap/releases/download/xny/v0.2.0/xny_0.2.0_darwin_arm64.tar.gz"
      sha256 "501fad48d72251128d45af447a6cd8b1a67d16d869d97fafcd258bf5b049d8e7"
    else
      url "https://github.com/humanbased-ai/homebrew-tap/releases/download/xny/v0.2.0/xny_0.2.0_darwin_amd64.tar.gz"
      sha256 "c20ac4e543e74e40ebbd40fbbee28fe6274c7d50a398ce4b6127c19a8ea77cb3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/humanbased-ai/homebrew-tap/releases/download/xny/v0.2.0/xny_0.2.0_linux_arm64.tar.gz"
      sha256 "ec7c945586d54accbde550b31b32d0ec75ab3c089bd1af0b24753eaa6ec4e5b2"
    else
      url "https://github.com/humanbased-ai/homebrew-tap/releases/download/xny/v0.2.0/xny_0.2.0_linux_amd64.tar.gz"
      sha256 "909a8fdcd9e6ac4d30afb3bb19343c9dd05400e7b5aaef37ad56c4fbe17b8660"
    end
  end

  def install
    bin.install "xny"
  end

  test do
    assert_match "xny v#{version}", shell_output("#{bin}/xny version")
  end
end
