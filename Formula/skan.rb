class Skan < Formula
  desc "Fzf wrapper around ripgrep"
  version "0.2.3"
  url "https://github.com/andenkondor/skan/releases/download/v0.2.3/skan.tar.gz"
  sha256 "e1f97bfa8517b34620922cb7247558f05f254e356e7b9a0124a8426cd5c06628"

  depends_on "andenkondor/zapfhahn/sops-opener"
  depends_on "bat"
  depends_on "fzf"
  depends_on "ripgrep"
  depends_on "zx"

  def install
    bin.install "skan.mjs" => "skan"
  end
end

