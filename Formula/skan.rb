class Skan < Formula
  desc "Fzf wrapper around ripgrep"
  version "tbd"
  url "tbd"
  sha256 "tbd"

  depends_on "andenkondor/zapfhahn/sops-opener"
  depends_on "bat"
  depends_on "fzf"
  depends_on "neovim"
  depends_on "ripgrep"
  depends_on "sops"

  def install
    bin.install "skan.sh" => "skan"
  end
end

