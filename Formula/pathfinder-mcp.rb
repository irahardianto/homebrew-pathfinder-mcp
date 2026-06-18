class PathfinderMcp < Formula
  desc "Pathfinder MCP Server"
  homepage "https://github.com/irahardianto/pathfinder"
  version "0.20.1"

  on_macos do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.20.1/pathfinder-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "b5c903fe22124f388e778a1eb5e4ca20a57fde84f32ad2b89e26925073df6db7"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.20.1/pathfinder-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "7392482528b6adf97a3ddc77b3ebb4e9f074726db1effa5bcb1cbae2b5fe6e16"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.20.1/pathfinder-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "204e79f6d02ccd610cc18b8a79e5721421ab9402c9ae829355a23e2c6af2252d"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.20.1/pathfinder-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "28c3998b5a8d7318b34d33029fad195b6f359a44704ec45d48104d9e6985ea96"
    end
  end

  def install
    bin.install "pathfinder-mcp"
  end

  test do
    assert_match version, shell_output("\#{bin}/pathfinder-mcp --version")
  end
end
