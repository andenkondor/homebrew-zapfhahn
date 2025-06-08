class Kommit < Formula
  desc "Easily write conventional commit messages"
  version "0.3.2"
  url "https://github.com/andenkondor/kommit/releases/download/v0.3.2/kommit.tar.gz"
  sha256 "c39d66370106358012f92bfcb8403a433764dd987a31d33776f8bfe98c3ade56"

  depends_on "git"
  depends_on "fzf"
  depends_on "zx"

  def install
    bin.install "kommit.mjs" => "kommit"
  end
end

