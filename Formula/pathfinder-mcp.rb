class PathfinderMcp < Formula
  desc "Pathfinder MCP Server"
  homepage "https://github.com/irahardianto/pathfinder"
  version "0.18.0"

  on_macos do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.18.0/pathfinder-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "557635f4fc77d5d5ccef52a001c9d87ca9978fb4aa46fbff02543e67fbabd2e6"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.18.0/pathfinder-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "4d147703ab6785ef258e34475cb5fbb4169aa92accf37825f85999f996244baf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.18.0/pathfinder-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4034ae0f9b5baca4c093047123d9bb18276edf9451bf2b1cfeeee2072ab72e78"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.18.0/pathfinder-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dcb1a0b09ac725bcaf1fe3f9114d8f421ba55aeedae3fcc814a56e5390e00198"
    end
  end

  def install
    bin.install "pathfinder-mcp"
  end

  test do
    assert_match version, shell_output("\#{bin}/pathfinder-mcp --version")
  end
end
