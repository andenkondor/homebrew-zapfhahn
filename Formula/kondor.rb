class Kondor < Formula
  desc "Full-text search"
  version "0.4.0"
  url "https://github.com/andenkondor/kondor/releases/download/v0.4.0/kondor.tar.gz"
  sha256 "ef84c21c3d9edfe3c78bf36b7758c90cb03267b36b00e1d9b7c8ff64c5e41689"

  depends_on "oven-sh/bun/bun"
  depends_on "ripgrep"
  depends_on "neovim"
  depends_on "bat"
  depends_on "fzf"

  def install
    bin.install "kondor" => "kd"
  end
end

