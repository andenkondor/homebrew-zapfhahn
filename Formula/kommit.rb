class Kommit < Formula
  desc "Easily write conventional commit messages"
  version "0.2.1"
  url "https://github.com/andenkondor/kommit/releases/download/v0.2.1/kommit.tar.gz"
  sha256 "7552c26de89810f86c80d1a10295d19f555df3c94669698ed5b24cd401bf44c2"

  depends_on "git"
  depends_on "zsh"
  depends_on "fzf"
  depends_on "gnu-sed"
  depends_on "neovim"

  def install
    bin.install "kommit.zsh" => "kommit"
  end
end

