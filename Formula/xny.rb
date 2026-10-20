class Xny < Formula
  desc "Command-line client for XnY Cloud"
  homepage "https://docs.xny.ai/developer/cli"
  version "0.2.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/humanbased-ai/homebrew-tap/releases/download/xny/v0.2.3/xny_0.2.3_darwin_arm64.tar.gz"
      sha256 "fed08518c3f7cfb9ae000c824f8872fc7f325e0cdb68240dbc0d882393b7720c"
    else
      url "https://github.com/humanbased-ai/homebrew-tap/releases/download/xny/v0.2.3/xny_0.2.3_darwin_amd64.tar.gz"
      sha256 "d543be9e254b2980b04be31da8bbaafb42e73309c34592707515b0b296498fe0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/humanbased-ai/homebrew-tap/releases/download/xny/v0.2.3/xny_0.2.3_linux_arm64.tar.gz"
      sha256 "5e31b56b6ab6eac17408d476856d8b9916080e314d9677221d06f97c8be2139d"
    else
      url "https://github.com/humanbased-ai/homebrew-tap/releases/download/xny/v0.2.3/xny_0.2.3_linux_amd64.tar.gz"
      sha256 "21802774e0764b016619f153051761365efe11ee937d25841ae0ff736b90fb6e"
    end
  end

  def install
    bin.install "xny"
  end

  test do
    assert_match "xny v#{version}", shell_output("#{bin}/xny version")
  end
end
