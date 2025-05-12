class Skan < Formula
  desc "Fzf wrapper around ripgrep"
  version "0.1.1"
  url "https://github.com/andenkondor/skan/releases/download/v0.1.1/skan.tar.gz"
  sha256 "cf4aad7acf80d41b707c3eba8cd1017955839cd4d8ed06fffcd3641058303a4c"

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

