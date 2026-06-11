class Kondor < Formula
  desc "Full-text search"
  version "0.10.0"
  url "https://github.com/andenkondor/kondor/releases/download/v0.10.0/kondor.tar.gz"
  sha256 "81fbe81b7cab0d33f1f61da15fcb7d3cb690912fc77b7277b59bc82be5883e9e"

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

