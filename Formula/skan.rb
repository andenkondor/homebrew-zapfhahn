class Skan < Formula
  desc "Fzf wrapper around ripgrep"
  version "0.4.0"
  url "https://github.com/andenkondor/skan/releases/download/v0.4.0/skan.tar.gz"
  sha256 "6a8528127b6ba2808dc21a4f71b3b50ea4b42e86683d62f3ac1f052c272e5601"

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

