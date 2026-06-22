class PathfinderMcp < Formula
  desc "Pathfinder MCP Server"
  homepage "https://github.com/irahardianto/pathfinder"
  version "0.22.0"

  on_macos do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.22.0/pathfinder-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "0d02c0519e8df2dc021e79e78ee7e9a299ecd44b93f28bcc80e65ba9d3c7d1b8"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.22.0/pathfinder-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "c4faadb64ed7587ea28fea0268990313d96c6d5cdcbfa7f7fd466827f30a4fd9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.22.0/pathfinder-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9c78be6265e2d69e8b2b6a94af75e5a72194cf3bb8019b78835002f1f4ca7210"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.22.0/pathfinder-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "18a4e0ff160dcf2d6b1a3c91776c4f0cc9c33b5bf29d46c1535c493e24db7a67"
    end
  end

  def install
    bin.install "pathfinder-mcp"
  end

  test do
    assert_match version, shell_output("\#{bin}/pathfinder-mcp --version")
  end
end
