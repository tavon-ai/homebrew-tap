class Lexcli < Formula
  desc "Unofficial CLI for the Lexware Public API"
  homepage "https://github.com/tavon-ai/lexcli"
  version "0.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tavon-ai/lexcli/releases/download/v0.0.1/lexcli_0.0.1_darwin_arm64.tar.gz"
      sha256 "267843e6fb6ce1a910dc3d4a94a03820e400415ba1841ff05d9a52aa84f00631"
    else
      url "https://github.com/tavon-ai/lexcli/releases/download/v0.0.1/lexcli_0.0.1_darwin_amd64.tar.gz"
      sha256 "cd470113c4177c9e46843e2e4ea4b6a040a2e8835db3603e6de4062b3e8d09e3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tavon-ai/lexcli/releases/download/v0.0.1/lexcli_0.0.1_linux_arm64.tar.gz"
      sha256 "45d2b3f0ca96f4277c996eaff418a8e8daf86ee04e9a8d3ae4c6ee6cf3afdb5c"
    else
      url "https://github.com/tavon-ai/lexcli/releases/download/v0.0.1/lexcli_0.0.1_linux_amd64.tar.gz"
      sha256 "e7a6f3a485c4b38afd65636ac586bca22916d9312df9ab09966ddf83451f7e64"
    end
  end

  def install
    bin.install "lex"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lex --version")
  end
end
