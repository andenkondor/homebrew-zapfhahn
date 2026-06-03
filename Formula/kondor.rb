class Kondor < Formula
  desc "Full-text search"
  version "0.8.0"
  url "https://github.com/andenkondor/kondor/releases/download/v0.8.0/kondor.tar.gz"
  sha256 "a4b49052aeac009ba7672b94a403e9a43fedcfd31d908d2120d5fed39fd04e38"

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

