class PathfinderMcp < Formula
  desc "Pathfinder MCP Server"
  homepage "https://github.com/irahardianto/pathfinder"
  version "0.12.0"

  on_macos do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.12.0/pathfinder-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "b0e88f092c6dfc784bd3b6f716a332e7ae88fa27b413e98ba9435f581512e5f4"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.12.0/pathfinder-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "4825209fe728b7f3ba10537b1edc9b59d1927baa664ee63ca3f9a02cdf4dd36f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.12.0/pathfinder-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c702750cd01ee678ae7f8a7c2bc487c4005d552f40f840ab8e6ac6ea2580cd44"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.12.0/pathfinder-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4807dfd96cb1380c1132d3fdb107f814baed46e1c2536583e2c7d4deff270436"
    end
  end

  def install
    bin.install "pathfinder-mcp"
  end

  test do
    assert_match version, shell_output("#{bin}/pathfinder-mcp --version")
  end
end
