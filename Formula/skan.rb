class Skan < Formula
  desc "Fzf wrapper around ripgrep"
  version "0.1.5"
  url "https://github.com/andenkondor/skan/releases/download/v0.1.5/skan.tar.gz"
  sha256 "d149dd781fe1f2995e789bbc883292fc1ec6e16192c266baf6e6d5485d396dd4"

  depends_on "andenkondor/zapfhahn/sops-opener"
  depends_on "bat"
  depends_on "fzf"
  depends_on "neovim"
  depends_on "ripgrep"
  depends_on "sops"

  def install
    bin.install "skan.zsh" => "skan"
  end
end

