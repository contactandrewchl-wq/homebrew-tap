class Turtle < Formula
  desc "Memoria persistente y coordinación multi-agente para CLIs de IA (MCP local-first)"
  homepage "https://github.com/contactandrewchl-wq/turtle-mcp"
  version "0.1.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/contactandrewchl-wq/turtle-mcp/releases/download/v0.1.7/turtle-aarch64-apple-darwin.tar.gz"
      sha256 "aca8502c73bce61140d344389beb806b46e2f0d6820958dec26b90f6e65b9732"
    end
    on_intel do
      url "https://github.com/contactandrewchl-wq/turtle-mcp/releases/download/v0.1.7/turtle-x86_64-apple-darwin.tar.gz"
      sha256 "b9987729acdf92ec130dc037c0456e7019424423887971bf341dc5911a4a08b0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/contactandrewchl-wq/turtle-mcp/releases/download/v0.1.7/turtle-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ea30f64548fcd70ab0189c1e05ba23a24e89228e91e65fef5e78af649c2521ea"
    end
    on_intel do
      url "https://github.com/contactandrewchl-wq/turtle-mcp/releases/download/v0.1.7/turtle-x86_64-unknown-linux-musl.tar.gz"
      sha256 "87f271664aa7018ab3a71d60c970494b871044613d789f0b7afdffac21ac08a1"
    end
  end

  def install
    bin.install "turtle"
  end

  test do
    assert_match "turtle", shell_output("#{bin}/turtle --version")
  end
end
