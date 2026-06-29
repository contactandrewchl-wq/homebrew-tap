class Turtle < Formula
  desc "Memoria persistente y coordinación multi-agente para CLIs de IA (MCP local-first)"
  homepage "https://github.com/contactandrewchl-wq/turtle-mcp"
  version "0.1.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/contactandrewchl-wq/turtle-mcp/releases/download/v0.1.8/turtle-aarch64-apple-darwin.tar.gz"
      sha256 "50582e1cd630a1e5c2263456cbad687e8e35cbf31f1d3f5c6185df11c06bdea5"
    end
    on_intel do
      url "https://github.com/contactandrewchl-wq/turtle-mcp/releases/download/v0.1.8/turtle-x86_64-apple-darwin.tar.gz"
      sha256 "ed39d1e7c29d4c589cda59aaf435bd28cf2167e83b85997dc28fc72092071fb9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/contactandrewchl-wq/turtle-mcp/releases/download/v0.1.8/turtle-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7c174b94450af12392aa38816d34fce3aa904938d1b491190e0d1e92d10021fc"
    end
    on_intel do
      url "https://github.com/contactandrewchl-wq/turtle-mcp/releases/download/v0.1.8/turtle-x86_64-unknown-linux-musl.tar.gz"
      sha256 "46ba480f0f1eb6273c300d855c11b2e0e561d26c6bd4646a5cb52cf2a1aa3210"
    end
  end

  def install
    bin.install "turtle"
  end

  test do
    assert_match "turtle", shell_output("#{bin}/turtle --version")
  end
end
