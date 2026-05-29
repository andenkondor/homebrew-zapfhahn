class Kondor < Formula
  desc "Full-text search"
  version "0.6.7"
  url "https://github.com/andenkondor/kondor/releases/download/v0.6.7/kondor.tar.gz"
  sha256 "98398e7842b035b22e9791e2c64aa30b4c5839c7e240ca320135721454d86d26"

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

