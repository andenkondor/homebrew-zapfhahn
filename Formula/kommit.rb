class Kommit < Formula
  desc "Easily write conventional commit messages"
  version "0.5.0"
  url "https://github.com/andenkondor/kommit/releases/download/v0.5.0/kommit.tar.gz"
  sha256 "fb56de82ed3c459bf1774abf29e534fc7cda47c612d416cca591f7a15a917aae"

  depends_on "git"
  depends_on "fzf"
  depends_on "zx"

  def install
    bin.install "kommit.mjs" => "kommit"
  end
end

