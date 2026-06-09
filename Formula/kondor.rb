class Kondor < Formula
  desc "Full-text search"
  version "0.9.3"
  url "https://github.com/andenkondor/kondor/releases/download/v0.9.3/kondor.tar.gz"
  sha256 "15391e8529a1fe4b0a8e9f860c5169b8a150e57380f3f1a2fa9621cf0d17c60c"

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

