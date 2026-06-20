class PathfinderMcp < Formula
  desc "Pathfinder MCP Server"
  homepage "https://github.com/irahardianto/pathfinder"
  version "0.21.1"

  on_macos do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.21.1/pathfinder-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "af0428b2ef1f6422b8b726f952780073fec14c0ee808e1f7b2e3594fff31131f"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.21.1/pathfinder-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "ff7acab2aa198e4a59182d5323367f71cac1f9a8a150f28aad1e62f9666aa996"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.21.1/pathfinder-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7583c014d46e901fd387de0dcd9d6e009fedd559d6a4a8f887eb5d38cfc289a5"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.21.1/pathfinder-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1f9db6807c8814f25cb582c9580198c029220228a8a8e964910f57bab0e0aaf8"
    end
  end

  def install
    bin.install "pathfinder-mcp"
  end

  test do
    assert_match version, shell_output("\#{bin}/pathfinder-mcp --version")
  end
end
