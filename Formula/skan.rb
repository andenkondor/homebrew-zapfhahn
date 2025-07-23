class Skan < Formula
  desc "Fzf wrapper around ripgrep"
  version "0.2.8"
  url "https://github.com/andenkondor/skan/releases/download/v0.2.8/skan.tar.gz"
  sha256 "a8e157d6de0de296ee905206df4659927e7ae66cd8b6c6eefe9fcd8ea7e339ac"

  depends_on "andenkondor/zapfhahn/sops-opener"
  depends_on "bat"
  depends_on "fzf"
  depends_on "ripgrep"
  depends_on "zx"

  def install
    bin.install "skan.mjs" => "skan"
  end
end

