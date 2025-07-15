class Skan < Formula
  desc "Fzf wrapper around ripgrep"
  version "0.2.2"
  url "https://github.com/andenkondor/skan/releases/download/v0.2.2/skan.tar.gz"
  sha256 "06ef0f33fa1ac2805f1442be019f88fb906d2713869f208348bc63f15b1998e5"

  depends_on "andenkondor/zapfhahn/sops-opener"
  depends_on "bat"
  depends_on "fzf"
  depends_on "ripgrep"
  depends_on "zx"

  def install
    bin.install "skan.mjs" => "skan"
  end
end

