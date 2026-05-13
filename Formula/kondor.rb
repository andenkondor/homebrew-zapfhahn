class Kondor < Formula
  desc "Full-text search"
  version "0.3.0"
  url "https://github.com/andenkondor/kondor/releases/download/v0.3.0/kondor.tar.gz"
  sha256 "01fcbd29b2286905bc4d5a758fd7a2de23ba145c4de29c848c30f3434b04e6f5"

  depends_on "oven-sh/bun/bun"
  depends_on "ripgrep"
  depends_on "neovim"
  depends_on "bat"
  depends_on "fzf"

  def install
    bin.install "kondor" => "kd"
  end
end

