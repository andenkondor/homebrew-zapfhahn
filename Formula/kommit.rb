class Kommit < Formula
  desc "Easily write conventional commit messages"
  version "0.3.6"
  url "https://github.com/andenkondor/kommit/releases/download/v0.3.6/kommit.tar.gz"
  sha256 "de33673b0dfc711cfc943aaf072aae1a0042dee936cb1fd25c8ca329e2b41e4f"

  depends_on "git"
  depends_on "fzf"
  depends_on "zx"

  def install
    bin.install "kommit.mjs" => "kommit"
  end
end

