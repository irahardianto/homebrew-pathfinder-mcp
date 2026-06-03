class PathfinderMcp < Formula
  desc "Pathfinder MCP Server"
  homepage "https://github.com/irahardianto/pathfinder"
  version "0.11.1"

  on_macos do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.11.1/pathfinder-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "c1b761af12207f1419f12d39cf251591f99843396fb4bcda253b7d910ca00eae"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.11.1/pathfinder-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "30a2a73b57d67928d5ca34791b431b91f289f80c254ffaa4354fed3209b2a38a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.11.1/pathfinder-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5334bb083d8fc6725a94b9ac3340d5825f76d4cdb14a6184cb97fed0b3be5e02"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.11.1/pathfinder-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bb8479ee65c5576df133d0a3bd8dfbdad63c26973c34e4c95aa4e8a8fa63e6dc"
    end
  end

  def install
    bin.install "pathfinder-mcp"
  end

  test do
    assert_match version, shell_output("#{bin}/pathfinder-mcp --version")
  end
end
