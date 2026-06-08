class PathfinderMcp < Formula
  desc "Pathfinder MCP Server"
  homepage "https://github.com/irahardianto/pathfinder"
  version "0.13.0"

  on_macos do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.13.0/pathfinder-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "0f99de1545918508a44f426372ccd98c25f79b607a65f34c7deb1749810b430c"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.13.0/pathfinder-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "cb7c613334cb57798659b235ce85cd77427b5c2fae030f622a30bac264b882b1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.13.0/pathfinder-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "128019899f098593e50085ad2b928f959bfb58901cb31191fc78bf4b2066b4d9"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.13.0/pathfinder-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8ab4785fa18eb531c054ef08a3694cab75741a4dcee6ff113d063897765c72cd"
    end
  end

  def install
    bin.install "pathfinder-mcp"
  end

  test do
    assert_match version, shell_output("#{bin}/pathfinder-mcp --version")
  end
end
