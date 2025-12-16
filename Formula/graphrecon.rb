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
    sha256 "debb3d69e4c3c5fdf9d64fbaeb0f4e7b66b70c2e8f9b2c6b7fbe0cdd8c1f4a47"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/graphrecon", "--help"
  end
end
