class Kommit < Formula
  desc "Easily write conventional commit messages"
  version "0.1.1"
  url "https://github.com/andenkondor/kommit/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "a75fb0bf0c699fe39edce548279685a4fe24f5c384281cd28c50dd9b1cce5433"

  depends_on "git"
  depends_on "zsh"
  depends_on "fzf"
  depends_on "gnu-sed"
  depends_on "neovim"

  def install
    bin.install "kommit.zsh" => "kommit"
  end
end

