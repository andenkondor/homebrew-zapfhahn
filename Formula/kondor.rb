class Kondor < Formula
  desc "Full-text search"
  version "0.3.1"
  url "https://github.com/andenkondor/kondor/releases/download/v0.3.1/kondor.tar.gz"
  sha256 "5fce031bb0a48e7fe907ff5a4c2517930ee02664548afb14790e6b27018a740a"

  depends_on "oven-sh/bun/bun"
  depends_on "ripgrep"
  depends_on "neovim"
  depends_on "bat"
  depends_on "fzf"

  def install
    bin.install "kondor" => "kd"
  end
end

