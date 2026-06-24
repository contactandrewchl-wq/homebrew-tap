class Turtle < Formula
  desc "Memoria persistente y coordinación multi-agente para CLIs de IA (MCP local-first)"
  homepage "https://github.com/contactandrewchl-wq/turtle-mcp"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/contactandrewchl-wq/turtle-mcp/releases/download/v0.1.0/turtle-aarch64-apple-darwin.tar.gz"
      sha256 "c168148a3c495f5ae47ce004a61c0f27fa358ba5aaf65cb3cb0532e25150cc61"
    end
    on_intel do
      url "https://github.com/contactandrewchl-wq/turtle-mcp/releases/download/v0.1.0/turtle-x86_64-apple-darwin.tar.gz"
      sha256 "903562d64516a795bce21db9e543cb1e31dd97d04ec448efc1a50bc9781cb2cd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/contactandrewchl-wq/turtle-mcp/releases/download/v0.1.0/turtle-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6e7c87029e7ed5dc301c90ee3be752be0237136c9c33dc4956de9bdc2c08d4c1"
    end
    on_intel do
      url "https://github.com/contactandrewchl-wq/turtle-mcp/releases/download/v0.1.0/turtle-x86_64-unknown-linux-musl.tar.gz"
      sha256 "36c2a33d56bac929898367f87b388ecbecb4bca83b851a0d4f2dc0947cc2ac2c"
    end
  end

  def install
    bin.install "turtle"
  end

  test do
    assert_match "turtle", shell_output("#{bin}/turtle --version")
  end
end
