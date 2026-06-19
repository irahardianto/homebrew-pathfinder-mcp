class PathfinderMcp < Formula
  desc "Pathfinder MCP Server"
  homepage "https://github.com/irahardianto/pathfinder"
  version "0.21.0"

  on_macos do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.21.0/pathfinder-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "6bf6f9506c7a9c7eff91b4c0afb7d87b043b8c2f589c4bc45029a0458161f6cf"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.21.0/pathfinder-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "13f449b8364406d27b74e33f421aee8a4b2595ec4c3660bb747755aee97915bc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.21.0/pathfinder-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fbda4df1c99188a589070ce0d51bfb7c9e808bb8a1b2bdb84918e9bbbd301939"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.21.0/pathfinder-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a10f65773dc09e5c445558dc8d0b056b168ddcf59da7ab1e2d8b3bdbf81fa798"
    end
  end

  def install
    bin.install "pathfinder-mcp"
  end

  test do
    assert_match version, shell_output("\#{bin}/pathfinder-mcp --version")
  end
end
