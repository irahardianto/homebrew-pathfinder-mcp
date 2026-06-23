class PathfinderMcp < Formula
  desc "Pathfinder MCP Server"
  homepage "https://github.com/irahardianto/pathfinder"
  version "0.23.0"

  on_macos do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.23.0/pathfinder-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "5f73a37c4e7b0cc51e20757aab5283ab1440bdf03ecacd199553f97d15dd3ab3"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.23.0/pathfinder-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "f6c063d8bc643a1f748dd9b014936f0535fccef4b16664e5536252db9055896a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.23.0/pathfinder-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "de26b96fc33d86c35cd902752a07a6f649fa4322b9557ac755c89c3dcaa8c3f4"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.23.0/pathfinder-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e742bfda9c29e6bc5bd53a8f037f838528ade0cc8ef1710ac26db1ffc7d2aa06"
    end
  end

  def install
    bin.install "pathfinder-mcp"
  end

  test do
    assert_match version, shell_output("\#{bin}/pathfinder-mcp --version")
  end
end
