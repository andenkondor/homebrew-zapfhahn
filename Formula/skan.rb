class Skan < Formula
  desc "Fzf wrapper around ripgrep"
  version "0.5.0"
  url "https://github.com/andenkondor/skan/releases/download/v0.5.0/skan.tar.gz"
  sha256 "bafc1005e8fe2d72bbb3cd3f5b77ab5006f009ae8e729f7424100937d08fc3de"

  depends_on "andenkondor/zapfhahn/sops-opener"
  depends_on "bat"
  depends_on "fzf"
  depends_on "neovim"
  depends_on "ripgrep"
  depends_on "zx"

  def install
    bin.install "skan.mjs" => "skan"
  end
end

