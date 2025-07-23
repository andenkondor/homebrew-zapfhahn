class Skan < Formula
  desc "Fzf wrapper around ripgrep"
  version "0.2.7"
  url "https://github.com/andenkondor/skan/releases/download/v0.2.7/skan.tar.gz"
  sha256 "2d80f148c66ac326087034a2dc7cf7c688418fd6f017167a4b13b85853d1f5e5"

  depends_on "andenkondor/zapfhahn/sops-opener"
  depends_on "bat"
  depends_on "fzf"
  depends_on "ripgrep"
  depends_on "zx"

  def install
    bin.install "skan.mjs" => "skan"
  end
end

