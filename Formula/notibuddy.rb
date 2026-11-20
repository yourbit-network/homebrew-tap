class Notibuddy < Formula
  desc "End-to-end encrypted push approval CLI and MCP server for iPhone and Watch"
  homepage "https://notibuddy.app/setup"
  url "https://registry.npmjs.org/notibuddy/-/notibuddy-0.4.1.tgz"
  sha256 "934c86dbbcfe0220e277609f1b9c68664fd0ebd8056beea6a088d3e231d318ec"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nb --version")
    assert_match version.to_s, shell_output("#{bin}/notibuddy --version")
    ENV["NOTIBUDDY_HOME"] = testpath/"home"
    output = shell_output("#{bin}/nb status")
    assert_match "No named destinations paired.", output
  end
end
