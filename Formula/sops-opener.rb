class SopsOpener < Formula
  desc "Open sops and normal files with a single command"
  version "tbd"
  url "tbd"
  sha256 "tbd"

  depends_on "zsh"
  depends_on "sops"

  def install
    bin.install "sops-opener.zsh" => "sops-opener"
  end
end

