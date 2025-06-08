class Kommit < Formula
  desc "Easily write conventional commit messages"
  version "0.3.1"
  url "https://github.com/andenkondor/kommit/releases/download/v0.3.1/kommit.tar.gz"
  sha256 "c6cc9b3a0a12a8b01400bbe51bde001869d7715f7ee3d724b2457122f6cc0a26"

  depends_on "git"
  depends_on "fzf"
  depends_on "zx"

  def install
    bin.install "kommit.mjs" => "kommit"
  end
end

