class Turtle < Formula
  desc "Memoria persistente y coordinación multi-agente para CLIs de IA (MCP local-first)"
  homepage "https://github.com/contactandrewchl-wq/turtle-mcp"
  version "0.1.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/contactandrewchl-wq/turtle-mcp/releases/download/v0.1.9/turtle-aarch64-apple-darwin.tar.gz"
      sha256 "117430d9fff1b5e52ec033f430178a697c99946eef47a780e9640ce05ead8ffc"
    end
    on_intel do
      url "https://github.com/contactandrewchl-wq/turtle-mcp/releases/download/v0.1.9/turtle-x86_64-apple-darwin.tar.gz"
      sha256 "41612e1410b686f59d26e285545aa46991f596539b5b429d6ab2e02438684476"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/contactandrewchl-wq/turtle-mcp/releases/download/v0.1.9/turtle-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b8f9b6b97ef73d72bf7ddf3a1cc084caa8fcce004f25b862e6c5fcd93c7b2e33"
    end
    on_intel do
      url "https://github.com/contactandrewchl-wq/turtle-mcp/releases/download/v0.1.9/turtle-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8c01fa89e681c4c2d4e79bc2397af63ac48f17571691223fe7eb6bd64183dbd9"
    end
  end

  def install
    bin.install "turtle"
  end

  test do
    assert_match "turtle", shell_output("#{bin}/turtle --version")
  end
end
