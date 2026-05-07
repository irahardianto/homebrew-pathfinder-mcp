class PathfinderMcp < Formula
  desc "Pathfinder MCP Server"
  homepage "https://github.com/irahardianto/pathfinder"
  version "0.7.0"

  on_macos do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.7.0/pathfinder-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "d97132996999e7c0ff4bdf86370a753fed741ddefc6aa232d978bc4c58d83626"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.7.0/pathfinder-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "011d62d0d3f30120568311fd019ffc1384525640a42517b6f4256576651cf7f5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.7.0/pathfinder-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "89e0ceb4320e487f3b3ffb57afd20c94220574438b6a3283b0681dfbaed8b2e0"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.7.0/pathfinder-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1008b747ae4c684392374c7a4ea862d55c5d61486778d32198e6f7872f4f863f"
    end
  end

  def install
    bin.install "pathfinder-mcp"
  end

  test do
    assert_match version, shell_output("#{bin}/pathfinder-mcp --version")
  end
end
