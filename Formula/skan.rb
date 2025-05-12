class Skan < Formula
  desc "Fzf wrapper around ripgrep"
  version "0.1.0"
  url "https://github.com/andenkondor/skan/releases/download/v0.1.0/skan.tar.gz"
  sha256 "8e83481ab2df39bed58763b667ac5e5959a186fd4b0cfe00ddb65518027e74c9"

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

