class Turtle < Formula
  desc "Memoria persistente y coordinación multi-agente para CLIs de IA (MCP local-first)"
  homepage "https://github.com/contactandrewchl-wq/turtle-mcp"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/contactandrewchl-wq/turtle-mcp/releases/download/v0.1.4/turtle-aarch64-apple-darwin.tar.gz"
      sha256 "e475f2c38372e94d41c5bd695e7a93700db667fa78b3907ecd4fbe26f2c6eeb5"
    end
    on_intel do
      url "https://github.com/contactandrewchl-wq/turtle-mcp/releases/download/v0.1.4/turtle-x86_64-apple-darwin.tar.gz"
      sha256 "68484b868a18561e669cc64345ac21fd2e7c7069fcb0e65170102d8f87a8eb35"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/contactandrewchl-wq/turtle-mcp/releases/download/v0.1.4/turtle-aarch64-unknown-linux-musl.tar.gz"
      sha256 "aa94c68981aa45efff827117a5e5f90f677291c4102016a35bc3fbfb8f71cac1"
    end
    on_intel do
      url "https://github.com/contactandrewchl-wq/turtle-mcp/releases/download/v0.1.4/turtle-x86_64-unknown-linux-musl.tar.gz"
      sha256 "74a8dceba1d2abf7d95ef9a4e20d02b4f7ceaf4c96701e9057b96d81c00d7b5a"
    end
  end

  def install
    bin.install "turtle"
  end

  test do
    assert_match "turtle", shell_output("#{bin}/turtle --version")
  end
end
