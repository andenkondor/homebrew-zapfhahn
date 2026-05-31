class Kondor < Formula
  desc "Full-text search"
  version "0.7.1"
  url "https://github.com/andenkondor/kondor/releases/download/v0.7.1/kondor.tar.gz"
  sha256 "e6fd4669c2600a45023bc370fe96c8f8422de00cdc3a4dcd9f1e805941a1522a"

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

