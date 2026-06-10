class PathfinderMcp < Formula
  desc "Pathfinder MCP Server"
  homepage "https://github.com/irahardianto/pathfinder"
  version "0.15.0"

  on_macos do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.15.0/pathfinder-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "709db6e2aca81e39b15606cac3beab5adb59f59200efd0627e637be789d242e3"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.15.0/pathfinder-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "70398515701be5c743eda4886d4e5f9df6177924d7e59ed575a4fb3507252375"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.15.0/pathfinder-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "992496d784e008f207c249223d73108de3fb518f8c8e4912f8440f2fc3311340"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.15.0/pathfinder-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "83d2c2511f6783262afdf83579cd1f4f8e193bb0d526cbe9012c6f6411f9adc1"
    end
  end

  def install
    bin.install "pathfinder-mcp"
  end

  test do
    assert_match version, shell_output("\#{bin}/pathfinder-mcp --version")
  end
end
