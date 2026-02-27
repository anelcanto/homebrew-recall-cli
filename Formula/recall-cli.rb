class RecallCli < Formula
  include Language::Python::Virtualenv

  desc "Personal semantic memory system — store, search, and manage memories locally"
  homepage "https://github.com/anelcanto/recall"
  url "https://files.pythonhosted.org/packages/02/4f/031fbbc0227a593c26be958706ee0c6919b1bf5f57f83565004d07eb2720/recall_cli-0.1.0.tar.gz"
  sha256 "7dfd56df9bf3a040d53e00fff3be4bbbbefdb811633fd3d4aa30c3043d957a1c"
  license "MIT"

  depends_on "python@3.12"

  resource "typer" do
    url "https://files.pythonhosted.org/packages/source/t/typer/typer-0.15.1.tar.gz"
    sha256 "a0588c0a7fa68a1978a069818657778f86abe6ff5ea6abf472f940a08bfe4f0a"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/source/r/rich/rich-13.9.4.tar.gz"
    sha256 "439594978a49a09530cff7ebc4b5c7103ef57baf48d5ea3184f21d9a2befa098"
  end

  resource "httpx" do
    url "https://files.pythonhosted.org/packages/source/h/httpx/httpx-0.28.1.tar.gz"
    sha256 "75e98c5f16b0f35b567856f597f06ff2270a374470a5c2392242528e3e3e42fc"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/recall", "--help"
  end
end
