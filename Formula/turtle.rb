class Turtle < Formula
  desc "Memoria persistente y coordinación multi-agente para CLIs de IA (MCP local-first)"
  homepage "https://github.com/contactandrewchl-wq/turtle-mcp"
  version "0.1.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/contactandrewchl-wq/turtle-mcp/releases/download/v0.1.11/turtle-aarch64-apple-darwin.tar.gz"
      sha256 "537f035ff06e58f90fb462cbc73e6a9b208247850d8e31cb43c4191a8076936a"
    end
    on_intel do
      url "https://github.com/contactandrewchl-wq/turtle-mcp/releases/download/v0.1.11/turtle-x86_64-apple-darwin.tar.gz"
      sha256 "ed2c9156ba0c62c723c5fbf56a5f6bc33c2212e1b257b941250249bf2cbad24c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/contactandrewchl-wq/turtle-mcp/releases/download/v0.1.11/turtle-aarch64-unknown-linux-musl.tar.gz"
      sha256 "21ec8e61b6caff9e7a3539b539c5ae4a27adecb3aefb71ce097e36ebd7730390"
    end
    on_intel do
      url "https://github.com/contactandrewchl-wq/turtle-mcp/releases/download/v0.1.11/turtle-x86_64-unknown-linux-musl.tar.gz"
      sha256 "db802fca40fe8c34484e05598122732399a408462174ceafe28f0b539b355cbd"
    end
  end

  def install
    bin.install "turtle"
  end

  test do
    assert_match "turtle", shell_output("#{bin}/turtle --version")
  end
end
