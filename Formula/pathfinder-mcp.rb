class PathfinderMcp < Formula
  desc "Pathfinder MCP Server"
  homepage "https://github.com/irahardianto/pathfinder"
  version "0.8.0"

  on_macos do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.8.0/pathfinder-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "ff579b4ef815c7e39a833646828310d850ef80eda90e123aeb735391b9fc5e69"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.8.0/pathfinder-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "5853d14d67c05ad688fac5f900def3aed70697379cf44159fee5059a9011bdfe"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.8.0/pathfinder-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0b47ade79588cbd0e2ea2773d1ce41b073d48d014fe700406ddba133fbaf4d2d"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.8.0/pathfinder-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "051d181a6f330c0da4be74d52a66c3b710a44a1b92b25192dbcba470ec9689b7"
    end
  end

  def install
    bin.install "pathfinder-mcp"
  end

  test do
    assert_match version, shell_output("#{bin}/pathfinder-mcp --version")
  end
end
