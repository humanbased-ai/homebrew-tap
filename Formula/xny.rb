class Xny < Formula
  desc "Command-line client for XnY Cloud"
  homepage "https://docs.xny.ai/developer/cli"
  version "0.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/humanbased-ai/homebrew-tap/releases/download/xny/v0.1.2/xny_0.1.2_darwin_arm64.tar.gz"
      sha256 "b418971ae57160611abd771b4e0a46e07ea858f44eb51ad17bd7f6d58c862b62"
    else
      url "https://github.com/humanbased-ai/homebrew-tap/releases/download/xny/v0.1.2/xny_0.1.2_darwin_amd64.tar.gz"
      sha256 "505d8d724463e2c4414fb5624e3d93dc29c075f8a4ebace42c0b71c2f6a5b32c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/humanbased-ai/homebrew-tap/releases/download/xny/v0.1.2/xny_0.1.2_linux_arm64.tar.gz"
      sha256 "8479b39b8f59f22ebc81eef0569b2d1470cfdbdcd08760540148ea0d014bec4e"
    else
      url "https://github.com/humanbased-ai/homebrew-tap/releases/download/xny/v0.1.2/xny_0.1.2_linux_amd64.tar.gz"
      sha256 "9bac16d69c8b321aa406652b579df0fa2efac95b51188715242ed1c5befcb368"
    end
  end

  def install
    bin.install "xny"
  end

  test do
    assert_match "xny v#{version}", shell_output("#{bin}/xny version")
  end
end
