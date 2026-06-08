class PathfinderMcp < Formula
  desc "Pathfinder MCP Server"
  homepage "https://github.com/irahardianto/pathfinder"
  version "0.13.1"

  on_macos do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.13.1/pathfinder-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "c13949d23bccfbd413531f94952d31784d4870195ac9ad11d027a092706975ce"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.13.1/pathfinder-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "af2f5da4fe3b2b9d1d4b0912aee0fc65f53a87f840494ab287e76c1008c9f811"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.13.1/pathfinder-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "68149961b1200fa4f580bb6b6a28fa5339e8a872763e1e952aed70a3ee12bbc3"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.13.1/pathfinder-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e8528075c9737b283a5665fbbe6a568fc03b337f9d0686e0e9962dd7854a4cd6"
    end
  end

  def install
    bin.install "pathfinder-mcp"
  end

  test do
    assert_match version, shell_output("\#{bin}/pathfinder-mcp --version")
  end
end
