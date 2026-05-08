class PathfinderMcp < Formula
  desc "Pathfinder MCP Server"
  homepage "https://github.com/irahardianto/pathfinder"
  version "0.8.1"

  on_macos do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.8.1/pathfinder-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "31e799eee0e4dc8cc18ce27933ea1c07384c02f3732a42720fe436b953997862"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.8.1/pathfinder-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "101f5b422586976e4d9e82e9250deb09f7756a04682872f279df1f490db70e21"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.8.1/pathfinder-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "daf9061c2f7fdfc8fa160cb7f65c026805dbb4a1d5b253355c108da5e4d75e9c"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.8.1/pathfinder-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9b8dfe93fda1ce508645488eb38ae68480ce91f50f97dd27e60867e15514bc17"
    end
  end

  def install
    bin.install "pathfinder-mcp"
  end

  test do
    assert_match version, shell_output("#{bin}/pathfinder-mcp --version")
  end
end
