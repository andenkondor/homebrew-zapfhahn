class Kondor < Formula
  desc "Full-text search"
  version "0.7.3"
  url "https://github.com/andenkondor/kondor/releases/download/v0.7.3/kondor.tar.gz"
  sha256 "2a6bd61d78b9dd379e8dc4b6ea901a09828dcc212a12bd40ada7714d984fb448"

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

