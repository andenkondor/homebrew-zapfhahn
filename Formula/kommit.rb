class Kommit < Formula
  desc "Easily write conventional commit messages"
  version "0.2.0"
  url "https://github.com/andenkondor/kommit/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "2f26a5c43e5b8ce1418f117c55220036323a53f7dc586049d1b5683fb2113f18"

  depends_on "git"
  depends_on "zsh"
  depends_on "fzf"
  depends_on "gnu-sed"
  depends_on "neovim"

  def install
    bin.install "kommit.zsh" => "kommit"
  end
end

