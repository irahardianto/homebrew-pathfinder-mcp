class PathfinderMcp < Formula
  desc "Pathfinder MCP Server"
  homepage "https://github.com/irahardianto/pathfinder"
  version "0.19.0"

  on_macos do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.19.0/pathfinder-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "130bf5529d9b44c7745214eb75eee80a81ce4d61f00ad52659db8a86336357d6"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.19.0/pathfinder-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "e76e9d08380bf7af41d6ef37a7b290e820f7814317fdc3693c325c56491c9ab9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.19.0/pathfinder-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7059e30329f8dc69c92bb6dc3328d3bed801389bcac2eb312595d795b6d2d0dd"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.19.0/pathfinder-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "be67536143f5baf9d71a2a67ebc64b10c97d01048416a457b4a8149f8cb6cd13"
    end
  end

  def install
    bin.install "pathfinder-mcp"
  end

  test do
    assert_match version, shell_output("\#{bin}/pathfinder-mcp --version")
  end
end
