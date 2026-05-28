class Kondor < Formula
  desc "Full-text search"
  version "0.6.6"
  url "https://github.com/andenkondor/kondor/releases/download/v0.6.6/kondor.tar.gz"
  sha256 "4f883bb0e3a272214712375948fc608471a9a01f5322c5ce04bee0b3eaac90ab"

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

