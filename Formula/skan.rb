class Skan < Formula
  desc "Fzf wrapper around ripgrep"
  version "0.2.4"
  url "https://github.com/andenkondor/skan/releases/download/v0.2.4/skan.tar.gz"
  sha256 "aa45300d20d5aae4e97805301890db6e2e2bc41e1455a313f54878b11f2a837d"

  depends_on "andenkondor/zapfhahn/sops-opener"
  depends_on "bat"
  depends_on "fzf"
  depends_on "ripgrep"
  depends_on "zx"

  def install
    bin.install "skan.mjs" => "skan"
  end
end

