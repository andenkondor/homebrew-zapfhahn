class Kommit < Formula
  desc "Easily write conventional commit messages"
  version "0.1.4"
  url "https://github.com/andenkondor/kommit/archive/refs/tags/v0.1.4.tar.gz"
  sha256 "fde90bf2de6048955efb4ae033fe02de897132663769a7018967e32cfc75ced0"

  depends_on "git"
  depends_on "zsh"
  depends_on "fzf"
  depends_on "gnu-sed"
  depends_on "neovim"

  def install
    bin.install "kommit.zsh" => "kommit"
  end
end

