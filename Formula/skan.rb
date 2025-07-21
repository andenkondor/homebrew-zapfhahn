class Skan < Formula
  desc "Fzf wrapper around ripgrep"
  version "0.2.5"
  url "https://github.com/andenkondor/skan/releases/download/v0.2.5/skan.tar.gz"
  sha256 "fb95a72ce5195a7ccd87ec8ab0e956a864d981600a9c35bac5709930ac069c6f"

  depends_on "andenkondor/zapfhahn/sops-opener"
  depends_on "bat"
  depends_on "fzf"
  depends_on "ripgrep"
  depends_on "zx"

  def install
    bin.install "skan.mjs" => "skan"
  end
end

