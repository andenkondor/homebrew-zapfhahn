class Kommit < Formula
  desc "Easily write conventional commit messages"
  version "0.3.0"
  url "https://github.com/andenkondor/kommit/releases/download/v0.3.0/kommit.tar.gz"
  sha256 "f9eeaeb5d657a79939f0bf7348449ba9e5742a0f85af3f92fb75f935213f91c9"

  depends_on "git"
  depends_on "zsh"
  depends_on "fzf"
  depends_on "gnu-sed"
  depends_on "neovim"

  def install
    bin.install "kommit.zsh" => "kommit"
  end
end

