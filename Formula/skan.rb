class Skan < Formula
  desc "Fzf wrapper around ripgrep"
  version "0.2.6"
  url "https://github.com/andenkondor/skan/releases/download/v0.2.6/skan.tar.gz"
  sha256 "1990ca49718900931b20b746cdb79abaf192c6ba7e452908b507232b216d07ec"

  depends_on "andenkondor/zapfhahn/sops-opener"
  depends_on "bat"
  depends_on "fzf"
  depends_on "ripgrep"
  depends_on "zx"

  def install
    bin.install "skan.mjs" => "skan"
  end
end

