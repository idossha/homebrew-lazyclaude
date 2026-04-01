class Lazyclaude < Formula
  desc "A lazygit-inspired TUI for managing Claude Code configuration"
  homepage "https://github.com/idossha/lazyclaude"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/idossha/lazyclaude/releases/download/v#{version}/lazyclaude-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "45af58db354a7c197d69d822f906f6f3f5b2c932848664cc3c295287e7515195"
    else
      url "https://github.com/idossha/lazyclaude/releases/download/v#{version}/lazyclaude-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "5f85a350463e1dcecdcaa29faf3610f04b57c16b89f6712f8abe37d15155976e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/idossha/lazyclaude/releases/download/v#{version}/lazyclaude-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2d8b5f55e84e90ccf1989bdd23ca0e09d585bf8afddf29d30355dbabecbe48a5"
    else
      url "https://github.com/idossha/lazyclaude/releases/download/v#{version}/lazyclaude-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5a5b4c491eeed46769d212d8fce6893f70570efe9c0dcc0b62637c457e817cc5"
    end
  end

  def install
    bin.install "lazyclaude"
  end

  test do
    assert_match "lazyclaude", shell_output("#{bin}/lazyclaude --version")
  end
end
