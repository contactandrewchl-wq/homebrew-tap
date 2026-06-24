class Turtle < Formula
  desc "Memoria persistente y coordinación multi-agente para CLIs de IA (MCP local-first)"
  homepage "https://github.com/contactandrewchl-wq/turtle-mcp"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/contactandrewchl-wq/turtle-mcp/releases/download/v0.1.1/turtle-aarch64-apple-darwin.tar.gz"
      sha256 "68bd0f5945ac0d868e6809db2cfae6d392e463fa69435bdda14a9e96a64b3110"
    end
    on_intel do
      url "https://github.com/contactandrewchl-wq/turtle-mcp/releases/download/v0.1.1/turtle-x86_64-apple-darwin.tar.gz"
      sha256 "80aff6ded045d87066b8a5043e2550c79943438768c2850b99d6c12525b819ed"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/contactandrewchl-wq/turtle-mcp/releases/download/v0.1.1/turtle-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1b42a149e51e3653f41ebbcf262deca06a6e7b51b8adceb10f59ffee44c7145a"
    end
    on_intel do
      url "https://github.com/contactandrewchl-wq/turtle-mcp/releases/download/v0.1.1/turtle-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1492c843eb5f79955fe6a71d6ef3c60262a7df7e1a7620de7063db2d83a4682e"
    end
  end

  def install
    bin.install "turtle"
  end

  test do
    assert_match "turtle", shell_output("#{bin}/turtle --version")
  end
end
