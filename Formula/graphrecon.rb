class Graphrecon < Formula
  include Language::Python::Virtualenv

  desc "Fast async GraphQL scanner"
  homepage "https://github.com/memirhan/GraphRecon"
  url "https://github.com/memirhan/GraphRecon/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "42ff539eeffd60e2f35fc153dfda029a84bf31b9c73dcfd2a3bd8868bf003068"
  license "MIT"

  depends_on "python@3.11"

  resource "aiohttp" do
    url "https://files.pythonhosted.org/packages/source/a/aiohttp/aiohttp-3.9.5.tar.gz"
    sha256 "edea7d15772ceeb29db4aff55e482d4bcfb6ae160ce144f2682de02f6d693551"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/graphrecon", "--help"
  end
end
