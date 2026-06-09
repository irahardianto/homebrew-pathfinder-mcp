class PathfinderMcp < Formula
  desc "Pathfinder MCP Server"
  homepage "https://github.com/irahardianto/pathfinder"
  version "0.14.0"

  on_macos do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.14.0/pathfinder-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "3c697ffe7a15f3e6bffe1baab377fe813dbe95ad1d761d55805cd056e6ee7ca9"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.14.0/pathfinder-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "ede0495ab0ed0b8d092e3bb30057adef97202815328319e46e19218bbc24c110"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.14.0/pathfinder-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "752d9d1b8e133cd5f882065121a0a83af4cafa80378a472b1bc4f79fbd88d8a3"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.14.0/pathfinder-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b8d9e931b149475763b3666efd12be9a0d8f7f82bec5d21591d7ce59065b430b"
    end
  end

  def install
    bin.install "pathfinder-mcp"
  end

  test do
    assert_match version, shell_output("\#{bin}/pathfinder-mcp --version")
  end
end
