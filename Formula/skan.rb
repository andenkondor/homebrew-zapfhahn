class Skan < Formula
  desc "Fzf wrapper around ripgrep"
  version "0.6.0"
  url "https://github.com/andenkondor/skan/releases/download/v0.6.0/skan.tar.gz"
  sha256 "780acaaac84800b04c8abc229ca5e6280299f3327c77d07787648f8a2695b8c1"

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

