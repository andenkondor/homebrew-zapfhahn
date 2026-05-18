class Kondor < Formula
  desc "Full-text search"
  version "0.5.0"
  url "https://github.com/andenkondor/kondor/releases/download/v0.5.0/kondor.tar.gz"
  sha256 "51ebed86d18d5617637d140e52ddb9afcc852959203c8bd0a88b9c71c400c94f"

  depends_on "oven-sh/bun/bun"
  depends_on "ripgrep"
  depends_on "neovim"
  depends_on "bat"
  depends_on "fzf"

  def install
    bin.install "kondor" => "kd"
  end
end

