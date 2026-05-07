class Kondor < Formula
  desc "Full-text search"
  version "0.2.0"
  url "https://github.com/andenkondor/kondor/releases/download/v0.2.0/kondor.tar.gz"
  sha256 "b0a1973806c94fbce8b07f641140f16b0eeb41fa667b15e3596a09e759cb3ab1"

  depends_on "oven-sh/bun/bun"
  depends_on "jq"
  depends_on "ripgrep"
  depends_on "neovim"
  depends_on "bat"
  depends_on "fzf"

  def install
    bin.install "kondor" => "kd"
  end
end

