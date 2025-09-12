class Kommit < Formula
  desc "Easily write conventional commit messages"
  version "0.4.1"
  url "https://github.com/andenkondor/kommit/releases/download/v0.4.1/kommit.tar.gz"
  sha256 "3670dedee496254f5dad4dc41386d979a5932c39e8909cfc79f2f8044d323657"

  depends_on "git"
  depends_on "fzf"
  depends_on "zx"

  def install
    bin.install "kommit.mjs" => "kommit"
  end
end

