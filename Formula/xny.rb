class Xny < Formula
  desc "Command-line client for XnY Cloud"
  homepage "https://docs.xny.ai/developer/cli"
  version "0.2.18"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/humanbased-ai/homebrew-tap/releases/download/xny/v0.2.18/xny_0.2.18_darwin_arm64.tar.gz"
      sha256 "5250215023ac594e086da2bcf51e012d2101c6ba1da6b8a2dcb6bd50043ed315"
    else
      url "https://github.com/humanbased-ai/homebrew-tap/releases/download/xny/v0.2.18/xny_0.2.18_darwin_amd64.tar.gz"
      sha256 "1a1dffd8f07ddf4a2895e24dcf6d61d6069bfc21f8d3f1aa7d67409a5d6213b6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/humanbased-ai/homebrew-tap/releases/download/xny/v0.2.18/xny_0.2.18_linux_arm64.tar.gz"
      sha256 "b2af9a360df1a44473c97a9951bdc5fadb4c4c8cb944ccc0816fd50323719d59"
    else
      url "https://github.com/humanbased-ai/homebrew-tap/releases/download/xny/v0.2.18/xny_0.2.18_linux_amd64.tar.gz"
      sha256 "d0fde0772850c26f4b5f6dc104647e696d5acae35ddcfe4d45bca628e49551b4"
    end
  end

  def install
    bin.install "xny"
  end

  test do
    assert_match "xny v#{version}", shell_output("#{bin}/xny version")
  end
end
