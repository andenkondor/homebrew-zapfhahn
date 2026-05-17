class Kondor < Formula
  desc "Full-text search"
  version "0.4.1"
  url "https://github.com/andenkondor/kondor/releases/download/v0.4.1/kondor.tar.gz"
  sha256 "6c93a1308979a1ea01c1e6c205fa37438229ddfcad007ffcdf8a86ff5499c51e"

  depends_on "oven-sh/bun/bun"
  depends_on "ripgrep"
  depends_on "neovim"
  depends_on "bat"
  depends_on "fzf"

  def install
    bin.install "kondor" => "kd"
  end
end

