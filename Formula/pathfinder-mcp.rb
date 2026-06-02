class PathfinderMcp < Formula
  desc "Pathfinder MCP Server"
  homepage "https://github.com/irahardianto/pathfinder"
  version "0.11.0"

  on_macos do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.11.0/pathfinder-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "90baf208cb996750309cae2d88d8520040c016ed5d76d71f963d2034dd6c24be"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.11.0/pathfinder-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "d265f05c57527582177bc27eb86362e52df72bdf42ecccf25f2403200964d819"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.11.0/pathfinder-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0a2d5c9a5fe2777c5e0afaa7671e11e1bb07c7fd939f69615c71d162a9624a16"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.11.0/pathfinder-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c417a4a5e11b1f15af9d5c34a8727d4690cf8ad62121eb4a4e4fc1abc4ea79c8"
    end
  end

  def install
    bin.install "pathfinder-mcp"
  end

  test do
    assert_match version, shell_output("#{bin}/pathfinder-mcp --version")
  end
end
