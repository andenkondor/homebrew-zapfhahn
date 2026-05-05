class Kondor < Formula
  desc "Full-text search"
  version "tbd"
  url "tbd"
  sha256 "tbd"

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

