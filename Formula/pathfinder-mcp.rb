class PathfinderMcp < Formula
  desc "Pathfinder MCP Server"
  homepage "https://github.com/irahardianto/pathfinder"
  version "0.17.0"

  on_macos do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.17.0/pathfinder-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "edc73edfc58350a042c390eddc0057e385d68d13abbb0f147dea1a0e0fe7ac59"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.17.0/pathfinder-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "a5f9ed5d7e6a64ef0a6673f4f6846b2bc25d5b15b48ec4fc2d7b513de46a6bce"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.17.0/pathfinder-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6d6ea651baeb5ce29454e7b47113087211ad31ce7fae31fe38eb2ca9ddb20d3b"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.17.0/pathfinder-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e6ba47cfe6e8c4f7b281158418a3ca3b670f24ee4a515bb8c640a58d912003f6"
    end
  end

  def install
    bin.install "pathfinder-mcp"
  end

  test do
    assert_match version, shell_output("\#{bin}/pathfinder-mcp --version")
  end
end
