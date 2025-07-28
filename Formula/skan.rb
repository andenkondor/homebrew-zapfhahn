class Skan < Formula
  desc "Fzf wrapper around ripgrep"
  version "0.2.10"
  url "https://github.com/andenkondor/skan/releases/download/v0.2.10/skan.tar.gz"
  sha256 "f280e66c07d1e35d4bac53b2229a25bbc677d3e0ee5596bcd2d11344d62b46c9"

  depends_on "andenkondor/zapfhahn/sops-opener"
  depends_on "bat"
  depends_on "fzf"
  depends_on "ripgrep"
  depends_on "zx"

  def install
    bin.install "skan.mjs" => "skan"
  end
end

