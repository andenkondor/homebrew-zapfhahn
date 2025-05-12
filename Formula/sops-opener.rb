class SopsOpener < Formula
  desc "Open sops and normal files with a single command"
  version "0.1.0"
  url "https://github.com/andenkondor/sops-opener/releases/download/v0.1.0/sops-opener.tar.gz"
  sha256 "010ec76215110a30b9fc1329f50c9941d4ffc15618290ba7a8b175ce0ae8a239"

  depends_on "zsh"
  depends_on "sops"

  def install
    bin.install "sops-opener.zsh" => "sops-opener"
  end
end

