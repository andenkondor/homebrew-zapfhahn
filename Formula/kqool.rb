class Kqool < Formula
  desc "Interactively build kql queries"
  version "0.0.4"
  url "https://github.com/andenkondor/kqool/releases/download/v0.0.4/kqool.tar.gz"
  sha256 "346f842bb002ef331e8f953cb3be0c38f0b90b82b04593ae3f453d2e18988ca3"


  depends_on "fzf"
  depends_on "zx"
  depends_on "jq"

  def install
    bin.install "kqool.mjs" => "kqool"
  end
end
