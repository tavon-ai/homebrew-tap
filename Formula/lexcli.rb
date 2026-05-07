class Lexcli < Formula
  desc "Unofficial CLI for the Lexware Public API"
  homepage "https://github.com/tavon-ai/lexcli"
  version "0.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tavon-ai/lexcli/releases/download/v0.0.0/lexcli_0.0.0_darwin_arm64.tar.gz"
      sha256 "REPLACE_ME"
    else
      url "https://github.com/tavon-ai/lexcli/releases/download/v0.0.0/lexcli_0.0.0_darwin_amd64.tar.gz"
      sha256 "REPLACE_ME"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tavon-ai/lexcli/releases/download/v0.0.0/lexcli_0.0.0_linux_arm64.tar.gz"
      sha256 "REPLACE_ME"
    else
      url "https://github.com/tavon-ai/lexcli/releases/download/v0.0.0/lexcli_0.0.0_linux_amd64.tar.gz"
      sha256 "REPLACE_ME"
    end
  end

  def install
    bin.install "lex"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lex --version")
  end
end
