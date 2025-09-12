class Skan < Formula
  desc "Fzf wrapper around ripgrep"
  version "0.3.0"
  url "https://github.com/andenkondor/skan/releases/download/v0.3.0/skan.tar.gz"
  sha256 "5e42f6c15b8d07cb36fe641c03132598eae05f287967e0cd45d3e97f6387e4b0"

  depends_on "andenkondor/zapfhahn/sops-opener"
  depends_on "bat"
  depends_on "fzf"
  depends_on "ripgrep"
  depends_on "zx"

  def install
    bin.install "skan.mjs" => "skan"
  end
end

