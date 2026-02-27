class RecallCli < Formula
  desc "Personal semantic memory system — store, search, and manage memories locally"
  homepage "https://github.com/anelcanto/recall"
  url "https://files.pythonhosted.org/packages/3c/f2/11866ad83bf57d3f406ddbf4eb188ddebecfe06011114dfe2c5a90b9b99e/recall_cli-0.3.2.tar.gz"
  sha256 "73aef68166543c4073d39d0227d48af06a621ced5dfda0295da7e02a6ac1396e"
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
