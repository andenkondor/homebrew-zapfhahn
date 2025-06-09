class Kommit < Formula
  desc "Easily write conventional commit messages"
  version "0.3.5"
  url "https://github.com/andenkondor/kommit/releases/download/v0.3.5/kommit.tar.gz"
  sha256 "6b3bbba6d44c5e1a6b2d72a7145122a7cffc0d34ab2a78c6c541864b0415093d"

  depends_on "git"
  depends_on "fzf"
  depends_on "zx"

  def install
    bin.install "kommit.mjs" => "kommit"
  end
end

