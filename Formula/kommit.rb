class Kommit < Formula
  desc "Easily write conventional commit messages"
  version "0.3.7"
  url "https://github.com/andenkondor/kommit/releases/download/v0.3.7/kommit.tar.gz"
  sha256 "b08697b20b4415f35a042b2282b2da8310f08d291c39c37436f4209effeffca3"

  depends_on "git"
  depends_on "fzf"
  depends_on "zx"

  def install
    bin.install "kommit.mjs" => "kommit"
  end
end

