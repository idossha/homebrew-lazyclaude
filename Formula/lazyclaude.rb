class Lazyclaude < Formula
  desc "A lazygit-inspired TUI for managing Claude Code configuration"
  homepage "https://github.com/idossha/lazyclaude"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/idossha/lazyclaude/releases/download/v#{version}/lazyclaude-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "ed5f4f8f449ad183848dc81e0398fc008c74458d77072ca4ef2100b6f860b70f"
    else
      url "https://github.com/idossha/lazyclaude/releases/download/v#{version}/lazyclaude-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "bb2510dc1a0d2f51f4d43bf571958299d39461d749d859db36778de13e392eaf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/idossha/lazyclaude/releases/download/v#{version}/lazyclaude-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5ce24e2e058c72937b1cb7146a62703f9f00faafdf0c1398afc30993136ada8b"
    else
      url "https://github.com/idossha/lazyclaude/releases/download/v#{version}/lazyclaude-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fbd833279ba9dbae764a7e1e9f3dc8d66d118e800d1dd78a8a090bbe84fd830b"
    end
  end

  def install
    bin.install "lazyclaude"
  end

  test do
    assert_match "lazyclaude", shell_output("#{bin}/lazyclaude --version")
  end
end
