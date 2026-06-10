class PathfinderMcp < Formula
  desc "Pathfinder MCP Server"
  homepage "https://github.com/irahardianto/pathfinder"
  version "0.16.0"

  on_macos do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.16.0/pathfinder-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "bf5f13bdac01c31f5f318238740de8e8b39e93cc879bb4c15a7af500a734772f"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.16.0/pathfinder-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "2cb08c7fbda8264ed158b995a2d936d5c3d2074ef42ccdfe1dc27eff7f9f23f9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.16.0/pathfinder-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b07c6b603ce86a624f1d77c71837b9757b44458b2a6821fc331e7777f26ea616"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.16.0/pathfinder-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "293b8cf55924a78bd4fd1eb0b755a128cf945b9e8bd480009354478841e2accc"
    end
  end

  def install
    bin.install "pathfinder-mcp"
  end

  test do
    assert_match version, shell_output("\#{bin}/pathfinder-mcp --version")
  end
end
