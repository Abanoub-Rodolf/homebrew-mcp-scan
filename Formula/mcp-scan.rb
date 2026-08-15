class McpScan < Formula
  desc "Open-source security scanner for MCP server configurations"
  homepage "https://github.com/Abanoub-Rodolf/mcp-scan"
  url "https://registry.npmjs.org/mcp-scan/-/mcp-scan-2.0.4.tgz"
  sha256 "f4993f2096b611aee6574ac90c69092d0eb0c7b9c7ea290672fc6c40f75997c3"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "mcp-scan", shell_output("#{bin}/mcp-scan --version")
    assert_match "Security scanner", shell_output("#{bin}/mcp-scan --help")
  end
end
