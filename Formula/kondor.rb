class Kondor < Formula
  desc "Full-text search"
  version "0.0.1"
  url "https://github.com/andenkondor/kondor/releases/download/v0.0.1/kondor.tar.gz"
  sha256 "77d85832cba3418afe073c8a7755bd60145a6f8d2ec32695aba075bd133df4e4"

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

