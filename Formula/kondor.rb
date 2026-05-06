class Kondor < Formula
  desc "Full-text search"
  version "0.0.2"
  url "https://github.com/andenkondor/kondor/releases/download/v0.0.2/kondor.tar.gz"
  sha256 "c4f1b9d607300267541f94ba819ddcb149ed4c83070b3c3ce4c0412261e7f061"

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

