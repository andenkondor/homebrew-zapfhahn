class Skan < Formula
  desc "Fzf wrapper around ripgrep"
  version "0.3.1"
  url "https://github.com/andenkondor/skan/releases/download/v0.3.1/skan.tar.gz"
  sha256 "c184e276d8cb8b9393e828eb3cd34bd7cd92a1d9fc77be43ca393aded592326e"

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

