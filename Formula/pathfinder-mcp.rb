class PathfinderMcp < Formula
  desc "Pathfinder MCP Server"
  homepage "https://github.com/irahardianto/pathfinder"
  version "0.17.1"

  on_macos do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.17.1/pathfinder-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "3b960e24bd7e460c89ddca12ee29700391245543d7239dd91aba344b8194279b"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.17.1/pathfinder-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "f25b63b5d69dd1ec81df1173f75ff637ca38881d31442ab1304d6eee86f80886"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.17.1/pathfinder-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "84f7c20b11c237524e503e47ccfd22aced75cd25ba23a1ff93c7b1164d781623"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.17.1/pathfinder-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b031c12079fabc00bc1ac6928d21a868e6cdb034b3a9b86212a036cddb810757"
    end
  end

  def install
    bin.install "pathfinder-mcp"
  end

  test do
    assert_match version, shell_output("\#{bin}/pathfinder-mcp --version")
  end
end
