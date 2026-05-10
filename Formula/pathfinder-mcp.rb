class PathfinderMcp < Formula
  desc "Pathfinder MCP Server"
  homepage "https://github.com/irahardianto/pathfinder"
  version "0.9.0"

  on_macos do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.9.0/pathfinder-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "437ede3ffe859a471dca58b017a687f50355cd7040190fa5c30d63a4fd8510b1"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.9.0/pathfinder-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "e658079bd9d5718900789745f38dfcf984c5508d1e09ae3993f0d2a2b9948c8c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.9.0/pathfinder-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bfb39642708b50e18b779c3bdb739786632e3d17bec4f3999b199b1efb056aef"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.9.0/pathfinder-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2d544796bfc9233feb97c492425c3fab16e7b5774be84057a4b29004e0d7f7cd"
    end
  end

  def install
    bin.install "pathfinder-mcp"
  end

  test do
    assert_match version, shell_output("#{bin}/pathfinder-mcp --version")
  end
end
