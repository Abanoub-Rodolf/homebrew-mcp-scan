class McpScan < Formula
  desc "Open-source security scanner for MCP server configurations"
  homepage "https://github.com/Abanoub-Rodolf/mcp-scan"
  url "https://registry.npmjs.org/mcp-scan/-/mcp-scan-2.0.12.tgz"
  sha256 "1ce3182f678f7e9e15adedea111b9d9d7b1d97083f3173a493ef9504bae8b1c8"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "2.0.12", shell_output("#{bin}/mcp-scan --version")
    assert_match "Security scanner", shell_output("#{bin}/mcp-scan --help")
  end
end
