class Notibuddy < Formula
  desc "End-to-end encrypted push approval CLI and MCP server for iPhone and Watch"
  homepage "https://notibuddy.app/setup"
  url "https://registry.npmjs.org/notibuddy/-/notibuddy-0.3.1.tgz"
  sha256 "3fa9c1292162254f9ce5186117a1b0806e101cc46448ff64ed5e627ca625875d"
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
