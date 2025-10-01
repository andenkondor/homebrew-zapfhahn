class Skan < Formula
  desc "Fzf wrapper around ripgrep"
  version "0.5.2"
  url "https://github.com/andenkondor/skan/releases/download/v0.5.2/skan.tar.gz"
  sha256 "7fb6c48d92f62f3f4ebe99c6556c843b0c6121c030772c284b2ed6e1ee4f3425"

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

