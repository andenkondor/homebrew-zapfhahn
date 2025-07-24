class Skan < Formula
  desc "Fzf wrapper around ripgrep"
  version "0.2.9"
  url "https://github.com/andenkondor/skan/releases/download/v0.2.9/skan.tar.gz"
  sha256 "1a94d28b19a7b5bce4fc8e76a6c1370bee31b0090f2c032026cd5c5bb2a08481"

  depends_on "andenkondor/zapfhahn/sops-opener"
  depends_on "bat"
  depends_on "fzf"
  depends_on "ripgrep"
  depends_on "zx"

  def install
    bin.install "skan.mjs" => "skan"
  end
end

