class Xny < Formula
  desc "Command-line client for XnY Cloud"
  homepage "https://docs.xny.ai/developer/cli"
  version "0.1.1"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/humanbased-ai/homebrew-tap/releases/download/xny/v0.1.1/xny_0.1.1_darwin_arm64.tar.gz"
      sha256 "eb5a79b8f3b97a660d590ea6221f3c8fe67565c3b84ebbabad6e804dd6a76719"
    else
      url "https://github.com/humanbased-ai/homebrew-tap/releases/download/xny/v0.1.1/xny_0.1.1_darwin_amd64.tar.gz"
      sha256 "8956f439ddba8890b866575bdec7b6cf474df60b7741759d98f47fd400593ede"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/humanbased-ai/homebrew-tap/releases/download/xny/v0.1.1/xny_0.1.1_linux_arm64.tar.gz"
      sha256 "8248d5bedd515fc9341f1fecc946033f786c96a5faf4bca4e176b8065c139d9c"
    else
      url "https://github.com/humanbased-ai/homebrew-tap/releases/download/xny/v0.1.1/xny_0.1.1_linux_amd64.tar.gz"
      sha256 "d8105b7fafcbad10b75c4f64e0fdaa0b90c3ecb82f55f8bcf49d147530183c67"
    end
  end

  def install
    bin.install "xny"
  end

  test do
    assert_match "xny #{version}", shell_output("#{bin}/xny version")
  end
end
