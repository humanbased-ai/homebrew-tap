class Xny < Formula
  desc "Command-line client for XnY Cloud"
  homepage "https://docs.xny.ai/developer/cli"
  version "0.2.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/humanbased-ai/homebrew-tap/releases/download/xny/v0.2.2/xny_0.2.2_darwin_arm64.tar.gz"
      sha256 "1a9d96d9759eb9084aac01820115c732e90a220feb9c875d81a771a4354b84cb"
    else
      url "https://github.com/humanbased-ai/homebrew-tap/releases/download/xny/v0.2.2/xny_0.2.2_darwin_amd64.tar.gz"
      sha256 "39deba96fef324a677769a110f541bc79490c78d3130126c14991b266990c868"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/humanbased-ai/homebrew-tap/releases/download/xny/v0.2.2/xny_0.2.2_linux_arm64.tar.gz"
      sha256 "a688d3fbce06c5d77554100f2420aa34bb6e8ffa034507f5c3e2eb7ed79eeed9"
    else
      url "https://github.com/humanbased-ai/homebrew-tap/releases/download/xny/v0.2.2/xny_0.2.2_linux_amd64.tar.gz"
      sha256 "c33bb2d29fb3672a5fcfb3bef54f83b60b0295563b63ee1dbba29c3499ca67f0"
    end
  end

  def install
    bin.install "xny"
  end

  test do
    assert_match "xny v#{version}", shell_output("#{bin}/xny version")
  end
end
