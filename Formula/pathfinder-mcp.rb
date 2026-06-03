class PathfinderMcp < Formula
  desc "Pathfinder MCP Server"
  homepage "https://github.com/irahardianto/pathfinder"
  version "0.11.2"

  on_macos do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.11.2/pathfinder-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "735593deb4dd0a2bd0867eb0f8927649442c85552f8a5d764de30db2f9536413"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.11.2/pathfinder-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "d58c88046bd021482fdb96d0db89805e735bde9f0ceb24098f6ae3fb3e20a25b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.11.2/pathfinder-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "162013972cff48f62d5cc3d02e1a78ad1822151a191a17ce86900009ef6e3f83"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.11.2/pathfinder-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0f7cdc85b524e95b8ca83b5abd1d13ba9ed2716523d41b9bff302123fdac512b"
    end
  end

  def install
    bin.install "pathfinder-mcp"
  end

  test do
    assert_match version, shell_output("#{bin}/pathfinder-mcp --version")
  end
end
