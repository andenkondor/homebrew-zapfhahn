class Kommit < Formula
  desc "Easily write conventional commit messages"
  version "0.3.4"
  url "https://github.com/andenkondor/kommit/releases/download/v0.3.4/kommit.tar.gz"
  sha256 "c4407662cdc7ce37026e285a61a8ae5fc8b6710704f25120a10897c6cc8ad72b"

  depends_on "git"
  depends_on "fzf"
  depends_on "zx"

  def install
    bin.install "kommit.mjs" => "kommit"
  end
end

