class Lazyhub < Formula
  desc "Lazygit-style GitHub TUI - keyboard-driven terminal UI for GitHub"
  homepage "https://github.com/saketh-kowtha/lazyhub"
  url "https://registry.npmjs.org/lazyhub/-/lazyhub-26.6.3.tgz"
  sha256 "4a9c45f9e49abbb22a1705c3bd48288d362cb0e425081a8b57752fc62cafd3e9"
  version "26.6.3"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    # --version prints the package version and exits 0 (#472, #514).
    assert_match version.to_s, shell_output("#{bin}/lazyhub --version")
  end
end
