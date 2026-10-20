class Xny < Formula
  desc "Command-line client for XnY Cloud"
  homepage "https://docs.xny.ai/developer/cli"
  version "0.2.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/humanbased-ai/homebrew-tap/releases/download/xny/v0.2.4/xny_0.2.4_darwin_arm64.tar.gz"
      sha256 "2c5f6a1639b1b204269f6d29952d1a97c34d33d1f44ddf91a8a21ddba4de56e5"
    else
      url "https://github.com/humanbased-ai/homebrew-tap/releases/download/xny/v0.2.4/xny_0.2.4_darwin_amd64.tar.gz"
      sha256 "bc40ca4b1247952275cf1ddcf63cb2ca5523236ea129ee7e29849de241dacf28"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/humanbased-ai/homebrew-tap/releases/download/xny/v0.2.4/xny_0.2.4_linux_arm64.tar.gz"
      sha256 "cefe137fda4c39ebf29675bab540c22143edb94fa73d470cd834a9e214e8238e"
    else
      url "https://github.com/humanbased-ai/homebrew-tap/releases/download/xny/v0.2.4/xny_0.2.4_linux_amd64.tar.gz"
      sha256 "49261726c1ed3723f06a9459721f503a0e3f809696f96d981b509f34b1986053"
    end
  end

  def install
    bin.install "xny"
  end

  test do
    assert_match "xny v#{version}", shell_output("#{bin}/xny version")
  end
end
