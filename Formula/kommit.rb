class Kommit < Formula
  desc "Easily write conventional commit messages"
  version "0.3.3"
  url "https://github.com/andenkondor/kommit/releases/download/v0.3.3/kommit.tar.gz"
  sha256 "2c14a4eaa947dcf0cb2e276ffac6aee02b66d239f37498d2cdd687b1b567b670"

  depends_on "git"
  depends_on "fzf"
  depends_on "zx"

  def install
    bin.install "kommit.mjs" => "kommit"
  end
end

