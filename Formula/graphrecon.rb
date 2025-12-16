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

  resource "multidict" do
    url "https://files.pythonhosted.org/packages/source/m/multidict/multidict-6.0.5.tar.gz"
    sha256 "f7e301075edaf50500f0b341543c41194d8df3ae5caf4702f2095f3ca73dd8da"
  end

  resource "yarl" do
    url "https://files.pythonhosted.org/packages/source/y/yarl/yarl-1.9.4.tar.gz"
    sha256 "566db86717cf8080b99b58b083b773a908ae40f06681e87e589a976faf8246bf"
  end

  resource "frozenlist" do
    url "https://files.pythonhosted.org/packages/source/f/frozenlist/frozenlist-1.4.1.tar.gz"
    sha256 "c037a86e8513059a2613aaba4d817bb90b9d9b6b69aace3ce9c877e8c8ed402b"
  end

  resource "aiosignal" do
    url "https://files.pythonhosted.org/packages/source/a/aiosignal/aiosignal-1.3.1.tar.gz"
    sha256 "54cd96e15e1649b75d6c87526a6ff0b6c1b0dd3459f43d9ca11d48c339b68cfc"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/graphrecon", "--help"
  end
end
