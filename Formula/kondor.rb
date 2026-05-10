class Kondor < Formula
  desc "Full-text search"
  version "0.2.1"
  url "https://github.com/andenkondor/kondor/releases/download/v0.2.1/kondor.tar.gz"
  sha256 "9b056df48e230490c27428c8e94f4e9355c60bc76b19deed12f61b653c2aec5c"

  depends_on "oven-sh/bun/bun"
  depends_on "ripgrep"
  depends_on "neovim"
  depends_on "bat"
  depends_on "fzf"

  def install
    bin.install "kondor" => "kd"
  end
end

