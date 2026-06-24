class Turtle < Formula
  desc "Memoria persistente y coordinación multi-agente para CLIs de IA (MCP local-first)"
  homepage "https://github.com/contactandrewchl-wq/turtle-mcp"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/contactandrewchl-wq/turtle-mcp/releases/download/v0.1.3/turtle-aarch64-apple-darwin.tar.gz"
      sha256 "d3f4404f281f0c49115553ba87a7b7d40866fe5bfb642adc3e296c34b77944ea"
    end
    on_intel do
      url "https://github.com/contactandrewchl-wq/turtle-mcp/releases/download/v0.1.3/turtle-x86_64-apple-darwin.tar.gz"
      sha256 "4836615ffbc975295ce3a8b204d2c2e3f0041e0305e2dfc52b78b7023d2e7dfe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/contactandrewchl-wq/turtle-mcp/releases/download/v0.1.3/turtle-aarch64-unknown-linux-musl.tar.gz"
      sha256 "04b06b733b3c28bca76ed2189aa73b1af5bb4bfa93baf3879e74393129c57b29"
    end
    on_intel do
      url "https://github.com/contactandrewchl-wq/turtle-mcp/releases/download/v0.1.3/turtle-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7ce3061932a71b45d77030473092f2d1d83bfc408c1f643acccdf3b5e4d278f5"
    end
  end

  def install
    bin.install "turtle"
  end

  test do
    assert_match "turtle", shell_output("#{bin}/turtle --version")
  end
end
