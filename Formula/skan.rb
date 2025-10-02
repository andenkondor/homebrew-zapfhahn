class Skan < Formula
  desc "Fzf wrapper around ripgrep"
  version "0.5.3"
  url "https://github.com/andenkondor/skan/releases/download/v0.5.3/skan.tar.gz"
  sha256 "0c6fb9bcaa9ca646eca88d6867c0bd03b615c4d605447c8b36b6448eb34add89"

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

