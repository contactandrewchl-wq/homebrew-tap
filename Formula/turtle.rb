class Turtle < Formula
  desc "Memoria persistente y coordinación multi-agente para CLIs de IA (MCP local-first)"
  homepage "https://github.com/contactandrewchl-wq/turtle-mcp"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/contactandrewchl-wq/turtle-mcp/releases/download/v0.1.5/turtle-aarch64-apple-darwin.tar.gz"
      sha256 "2cb0b592611c04bf810dbaf8d34c3c3a90abb6a4def063f24f803a7c185643bc"
    end
    on_intel do
      url "https://github.com/contactandrewchl-wq/turtle-mcp/releases/download/v0.1.5/turtle-x86_64-apple-darwin.tar.gz"
      sha256 "2d7658941426b222b05a395a91ceece15a13287f083c5a48d00cbe0b26552a6f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/contactandrewchl-wq/turtle-mcp/releases/download/v0.1.5/turtle-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0bad5e8dbfda799b7641c8990cc23d7246cca082be70bab0f0698adeac1f8196"
    end
    on_intel do
      url "https://github.com/contactandrewchl-wq/turtle-mcp/releases/download/v0.1.5/turtle-x86_64-unknown-linux-musl.tar.gz"
      sha256 "119f94870fc7b46e8dcaea02add0e5622051808d18dcf75e987a5fab6fb0b008"
    end
  end

  def install
    bin.install "turtle"
  end

  test do
    assert_match "turtle", shell_output("#{bin}/turtle --version")
  end
end
