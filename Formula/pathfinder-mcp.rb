class PathfinderMcp < Formula
  desc "Pathfinder MCP Server"
  homepage "https://github.com/irahardianto/pathfinder"
  version "0.9.1"

  on_macos do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.9.1/pathfinder-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "61e42b054f9835da6e61187c249084be1c795f1cb38d4d8c6eca82cd5f39e533"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.9.1/pathfinder-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "9809228a8ecd9e443cff58e311040d965b2250f134b3a9026b2be90275a395d9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.9.1/pathfinder-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8365eb610b44a08c156ee8fa7177f6fff49c3e749a56d0d70e558098926bf23a"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.9.1/pathfinder-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0b75ee2241abcc4116219b441ce12fba7eb9869a188213fc9dba33b19134c429"
    end
  end

  def install
    bin.install "pathfinder-mcp"
  end

  test do
    assert_match version, shell_output("#{bin}/pathfinder-mcp --version")
  end
end
