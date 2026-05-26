class Kondor < Formula
  desc "Full-text search"
  version "0.6.3"
  url "https://github.com/andenkondor/kondor/releases/download/v0.6.3/kondor.tar.gz"
  sha256 "d77e7a0879171c31b1e32eb65fd73c8c41c3aaef9ba304e0ad89b62ae31729e0"

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

