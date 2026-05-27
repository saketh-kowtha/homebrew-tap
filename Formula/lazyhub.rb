class Lazyhub < Formula
  desc "Lazygit-style GitHub TUI — keyboard-driven terminal UI for GitHub"
  homepage "https://github.com/saketh-kowtha/lazyhub"
  url "https://registry.npmjs.org/lazyhub/-/lazyhub-26.5.4.tgz"
  sha256 "669dea9d2f02fb48e837514fc0d7a6762307a6be15c56facb67d84db28337d3e"
  version "26.5.4"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "lazyhub", shell_output("#{bin}/lazyhub --version 2>&1", 1)
  end
end
