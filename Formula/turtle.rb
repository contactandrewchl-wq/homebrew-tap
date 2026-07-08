class Turtle < Formula
  desc "Memoria persistente y coordinación multi-agente para CLIs de IA (MCP local-first)"
  homepage "https://github.com/contactandrewchl-wq/turtle-mcp"
  version "0.1.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/contactandrewchl-wq/turtle-mcp/releases/download/v0.1.12/turtle-aarch64-apple-darwin.tar.gz"
      sha256 "34eccea1c3a9381a6e6ad4edc435092a752671c98c2223e9a6b76ee6eb6aa83d"
    end
    on_intel do
      url "https://github.com/contactandrewchl-wq/turtle-mcp/releases/download/v0.1.12/turtle-x86_64-apple-darwin.tar.gz"
      sha256 "664f3c561061d6fb28f816616aa6f03e4dd95f196f2446593b42161199e0dc1e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/contactandrewchl-wq/turtle-mcp/releases/download/v0.1.12/turtle-aarch64-unknown-linux-musl.tar.gz"
      sha256 "aca8887b6ed893abd891fa78010cf9923d19286f38b80d2497b180a6d4dbfe6d"
    end
    on_intel do
      url "https://github.com/contactandrewchl-wq/turtle-mcp/releases/download/v0.1.12/turtle-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f627055d357148f11e9ab88e8cbe0fb3451f58d6778c199b8fd480ebadd0158f"
    end
  end

  def install
    bin.install "turtle"
  end

  test do
    assert_match "turtle", shell_output("#{bin}/turtle --version")
  end
end
