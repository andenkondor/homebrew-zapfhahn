class Skan < Formula
  desc "Fzf wrapper around ripgrep"
  version "0.2.1"
  url "https://github.com/andenkondor/skan/releases/download/v0.2.1/skan.tar.gz"
  sha256 "91270022ccced03bb77a2534f09c7c2efd3d018e1c8bac525aac1291834340fd"

  depends_on "andenkondor/zapfhahn/sops-opener"
  depends_on "bat"
  depends_on "fzf"
  depends_on "ripgrep"
  depends_on "zx"

  def install
    bin.install "skan.zsh" => "skan"
  end
end

