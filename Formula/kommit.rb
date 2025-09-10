class Kommit < Formula
  desc "Easily write conventional commit messages"
  version "0.4.0"
  url "https://github.com/andenkondor/kommit/releases/download/v0.4.0/kommit.tar.gz"
  sha256 "f4fabb85c92a9d2e71f4fd862626a749f7feb048f41146e3f920bb59974e078b"

  depends_on "git"
  depends_on "fzf"
  depends_on "zx"

  def install
    bin.install "kommit.mjs" => "kommit"
  end
end

