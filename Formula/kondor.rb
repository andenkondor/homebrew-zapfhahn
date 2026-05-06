class Kondor < Formula
  desc "Full-text search"
  version "0.0.3"
  url "https://github.com/andenkondor/kondor/releases/download/v0.0.3/kondor.tar.gz"
  sha256 "8f1d1781b4d2d70ac01c068b5f79562a8803bb3532d5cbadd442b2cc8bb60e97"

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

