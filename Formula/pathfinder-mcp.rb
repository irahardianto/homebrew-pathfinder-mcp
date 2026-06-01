class PathfinderMcp < Formula
  desc "Pathfinder MCP Server"
  homepage "https://github.com/irahardianto/pathfinder"
  version "0.10.0"

  on_macos do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.10.0/pathfinder-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "dd8d10c8d7d35336e5acc5f1b88d298f9a78a6031b67fa32b4a8c5206effeda0"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.10.0/pathfinder-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "663675b739491ba2f5607e0870aad6ba9fca404e5079a5469c84d928ef9ca2b7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.10.0/pathfinder-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c1c3429aa81cda8876f82bfcc35bc55fbf4a8df114632f9e4cc11b39d672f9de"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.10.0/pathfinder-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7f81d61bc45d00f45acd0528c215800d2f5e704d7e0c3f5f41d156fbe4d57e57"
    end
  end

  def install
    bin.install "pathfinder-mcp"
  end

  test do
    assert_match version, shell_output("#{bin}/pathfinder-mcp --version")
  end
end
