class McpScan < Formula
  desc "Open-source security scanner for MCP server configurations"
  homepage "https://github.com/Abanoub-Rodolf/mcp-scan"
  url "https://registry.npmjs.org/mcp-scan/-/mcp-scan-2.0.13.tgz"
  sha256 "f3787cc8c2554ffb3eb65aabbd0fc5d84b7c3d01fa8c6cf7be07a16cdf033808"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "2.0.13", shell_output("#{bin}/mcp-scan --version")
    assert_match "Security scanner", shell_output("#{bin}/mcp-scan --help")
  end
end
