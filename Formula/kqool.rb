class Kqool < Formula
  desc "Interactively build kql queries"
  version "tbd"
  url "tbd"
  sha256 "tbd"


  depends_on "fzf"
  depends_on "zx"
  depends_on "jq"

  def install
    bin.install "kqool.mjs" => "kqool"
  end
end
