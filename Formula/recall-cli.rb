class RecallCli < Formula
  include Language::Python::Virtualenv

  desc "Personal semantic memory system — store, search, and manage memories locally"
  homepage "https://github.com/anelcanto/recall"
  url "https://files.pythonhosted.org/packages/02/4f/031fbbc0227a593c26be958706ee0c6919b1bf5f57f83565004d07eb2720/recall_cli-0.1.0.tar.gz"
  sha256 "7dfd56df9bf3a040d53e00fff3be4bbbbefdb811633fd3d4aa30c3043d957a1c"
  license "MIT"

  depends_on "python@3.12"

  def install
    venv = virtualenv_create(libexec, "python3.12")
    venv.pip_install buildpath
    bin.install_symlink libexec/"bin/recall"
  end

  test do
    assert_match "recall", shell_output("#{bin}/recall --help")
  end
end
