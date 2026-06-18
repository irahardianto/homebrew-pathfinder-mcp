class PathfinderMcp < Formula
  desc "Pathfinder MCP Server"
  homepage "https://github.com/irahardianto/pathfinder"
  version "0.20.0"

  on_macos do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.20.0/pathfinder-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "17656d466cb60225c91b6db28fb810c8f08c12d409c78143b67ac86deb0609a1"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.20.0/pathfinder-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "c38c7449c894ed036d17084d764fda1285266a142091a3acccbcba34abbdc629"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.20.0/pathfinder-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "53720fd0bad70aae32cde9cc95c4d58cea685160000bad74a04903a7100ef709"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.20.0/pathfinder-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8393481a2a1162bb28aee6a0eb7086805ef395f86acff9f9a961203ffed0627a"
    end
  end

  def install
    bin.install "pathfinder-mcp"
  end

  test do
    assert_match version, shell_output("\#{bin}/pathfinder-mcp --version")
  end
end
