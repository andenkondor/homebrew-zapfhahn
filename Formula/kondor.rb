class Kondor < Formula
  desc "Full-text search"
  version "0.9.4"
  url "https://github.com/andenkondor/kondor/releases/download/v0.9.4/kondor.tar.gz"
  sha256 "0995bee3f3652236702a85cbede1dbbf51622398a980490d46204c2351a2bd4c"

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

