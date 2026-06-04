class Kondor < Formula
  desc "Full-text search"
  version "0.8.1"
  url "https://github.com/andenkondor/kondor/releases/download/v0.8.1/kondor.tar.gz"
  sha256 "195b8e21d33ff6644e1dbc2c966c51d6b898febd47d85c3e144fc5edbb3339d5"

  depends_on "oven-sh/bun/bun"
  depends_on "ripgrep"
  depends_on "neovim"
  depends_on "bat"
  depends_on "fzf"

  def install
    libexec.install Dir["*"]
    (bin/"kd").write <<~EOS
      #!/bin/bash
      exec "#{Formula["oven-sh/bun/bun"].opt_bin}/bun" run "#{libexec}/index.js" "$@"
    EOS
  end
end

