class RecallCli < Formula
  desc "Personal semantic memory system — store, search, and manage memories locally"
  homepage "https://github.com/anelcanto/recall"
  url "https://files.pythonhosted.org/packages/6f/a6/f55a2da647f3ff9450ded06219cd75e4f14e9f792595eb669fb5e3af5317/recall_cli-0.3.3.tar.gz"
  sha256 "3ad9cc2b213442d3270fb2ea78ce95420c09acbabc5a7c0b8cb310b5bae0a6e9"
  license "MIT"

  depends_on "python@3.12"

  def install
    python = Formula["python@3.12"].opt_bin/"python3.12"
    system python, "-m", "venv", libexec
    system libexec/"bin/pip", "install", "--no-cache-dir", "recall-cli==#{version}"
    bin.install_symlink libexec/"bin/recall"
  end

  test do
    assert_match "recall", shell_output("#{bin}/recall --help")
  end
end
