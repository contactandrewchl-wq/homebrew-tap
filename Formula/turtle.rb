class Turtle < Formula
  desc "Memoria persistente y coordinación multi-agente para CLIs de IA (MCP local-first)"
  homepage "https://github.com/contactandrewchl-wq/turtle-mcp"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/contactandrewchl-wq/turtle-mcp/releases/download/v0.1.2/turtle-aarch64-apple-darwin.tar.gz"
      sha256 "2a2354bc30d571473063c3f3646a2b575b45f57ca554eb4fb0f4df4270f617ea"
    end
    on_intel do
      url "https://github.com/contactandrewchl-wq/turtle-mcp/releases/download/v0.1.2/turtle-x86_64-apple-darwin.tar.gz"
      sha256 "f37fe6e9e1484367c694dfbee8ab605dc34dc14d1fe083afb7456b5a1c6443e4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/contactandrewchl-wq/turtle-mcp/releases/download/v0.1.2/turtle-aarch64-unknown-linux-musl.tar.gz"
      sha256 "eafcffd409b8818edd2e8ab95a3fd76cd10cc2e50b2cf5b15335e70837781ef9"
    end
    on_intel do
      url "https://github.com/contactandrewchl-wq/turtle-mcp/releases/download/v0.1.2/turtle-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4e882fd925be998770d790e1eb038cd0bd3f4f46444f3482856df1df2159e042"
    end
  end

  def install
    bin.install "turtle"
  end

  test do
    assert_match "turtle", shell_output("#{bin}/turtle --version")
  end
end
