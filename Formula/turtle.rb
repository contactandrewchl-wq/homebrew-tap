class Turtle < Formula
  desc "Memoria persistente y coordinación multi-agente para CLIs de IA (MCP local-first)"
  homepage "https://github.com/contactandrewchl-wq/turtle-mcp"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/contactandrewchl-wq/turtle-mcp/releases/download/v0.1.6/turtle-aarch64-apple-darwin.tar.gz"
      sha256 "b2e78963f01ddcf3ce95507a5b515a99a209e6d0ab82bced58190cfaca5105b0"
    end
    on_intel do
      url "https://github.com/contactandrewchl-wq/turtle-mcp/releases/download/v0.1.6/turtle-x86_64-apple-darwin.tar.gz"
      sha256 "92b6b83c39d792bdcfecf57cc8c111cb0cac0ff6f23ed369f2911295c8158de0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/contactandrewchl-wq/turtle-mcp/releases/download/v0.1.6/turtle-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c3c211e2ed2b6dfa5a9d538c5683b09e9e30f440a544970886c21ff12a484f1c"
    end
    on_intel do
      url "https://github.com/contactandrewchl-wq/turtle-mcp/releases/download/v0.1.6/turtle-x86_64-unknown-linux-musl.tar.gz"
      sha256 "659a92a633872094646dabc62d3502af3530ce2bf24233708e5391db234add65"
    end
  end

  def install
    bin.install "turtle"
  end

  test do
    assert_match "turtle", shell_output("#{bin}/turtle --version")
  end
end
