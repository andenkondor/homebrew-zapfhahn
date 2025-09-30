class Skan < Formula
  desc "Fzf wrapper around ripgrep"
  version "0.5.1"
  url "https://github.com/andenkondor/skan/releases/download/v0.5.1/skan.tar.gz"
  sha256 "5b1e9702630645825a1054a1005ee0d59616942aa0611164c46a0dcfe312e705"

  depends_on "andenkondor/zapfhahn/sops-opener"
  depends_on "bat"
  depends_on "fzf"
  depends_on "neovim"
  depends_on "ripgrep"
  depends_on "zx"

  def install
    bin.install "skan.mjs" => "skan"
  end
end

