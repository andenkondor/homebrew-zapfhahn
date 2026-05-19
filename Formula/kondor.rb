class Kondor < Formula
  desc "Full-text search"
  version "0.5.1"
  url "https://github.com/andenkondor/kondor/releases/download/v0.5.1/kondor.tar.gz"
  sha256 "3539ca0261bd62361f05e90afcb3e9a76705ead3924b102be091a6cd09f34a95"

  depends_on "oven-sh/bun/bun"
  depends_on "ripgrep"
  depends_on "neovim"
  depends_on "bat"
  depends_on "fzf"

  def install
    bin.install "kondor" => "kd"
  end
end

