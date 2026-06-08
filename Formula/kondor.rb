class Kondor < Formula
  desc "Full-text search"
  version "0.9.1"
  url "https://github.com/andenkondor/kondor/releases/download/v0.9.1/kondor.tar.gz"
  sha256 "4e7adbb050cf7d35449a2dd087874745d3197e78eda69ae58ea2086398c87082"

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

