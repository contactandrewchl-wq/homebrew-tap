class Turtle < Formula
  desc "Memoria persistente y coordinación multi-agente para CLIs de IA (MCP local-first)"
  homepage "https://github.com/contactandrewchl-wq/turtle-mcp"
  version "0.1.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/contactandrewchl-wq/turtle-mcp/releases/download/v0.1.10/turtle-aarch64-apple-darwin.tar.gz"
      sha256 "2aa821cbad8fa3c1c3edd8357ca4853250fd0197fe1688e59ad8d7bb2416efc8"
    end
    on_intel do
      url "https://github.com/contactandrewchl-wq/turtle-mcp/releases/download/v0.1.10/turtle-x86_64-apple-darwin.tar.gz"
      sha256 "b42ee2e5a38138fd27ea63800a155af4ab0e90632769149d7a1362893a851732"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/contactandrewchl-wq/turtle-mcp/releases/download/v0.1.10/turtle-aarch64-unknown-linux-musl.tar.gz"
      sha256 "801b493865b1e46862145c84a30a4857d8dc024f37bb1eb743133d6f81b4136f"
    end
    on_intel do
      url "https://github.com/contactandrewchl-wq/turtle-mcp/releases/download/v0.1.10/turtle-x86_64-unknown-linux-musl.tar.gz"
      sha256 "82dc7fa6be47f5b3b9b80c4796fa16442fd19d815a5dd9e84a5697fe29060cd3"
    end
  end

  def install
    bin.install "turtle"
  end

  test do
    assert_match "turtle", shell_output("#{bin}/turtle --version")
  end
end
