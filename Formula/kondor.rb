class Kondor < Formula
  desc "Full-text search"
  version "0.1.0"
  url "https://github.com/andenkondor/kondor/releases/download/v0.1.0/kondor.tar.gz"
  sha256 "c6f5ad8d6933c37a4cc44502e79f4caa4985dbdfc4e0f686aedbc8bb7cbe890f"

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

