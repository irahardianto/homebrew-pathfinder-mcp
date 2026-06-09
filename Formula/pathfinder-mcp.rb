class PathfinderMcp < Formula
  desc "Pathfinder MCP Server"
  homepage "https://github.com/irahardianto/pathfinder"
  version "0.13.2"

  on_macos do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.13.2/pathfinder-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "613c9cced5dab59b256e6cbd910b24feee235c24258d9b01b2e0a6562cc8a7f6"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.13.2/pathfinder-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "981f3a10b740610d4913723d15b03647aa2d5f022e130208d1495d9cf179ad22"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.13.2/pathfinder-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b382d0fb85393c46728673ae49550dec27bae32c68a096d968ebe8c602db8973"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.13.2/pathfinder-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a03e511b17d0fa3c83528610eecf8aa38b25d83e57759dd20ea93d19a787ec46"
    end
  end

  def install
    bin.install "pathfinder-mcp"
  end

  test do
    assert_match version, shell_output("\#{bin}/pathfinder-mcp --version")
  end
end
