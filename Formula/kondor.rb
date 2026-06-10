class Kondor < Formula
  desc "Full-text search"
  version "0.9.5"
  url "https://github.com/andenkondor/kondor/releases/download/v0.9.5/kondor.tar.gz"
  sha256 "65622c089179c84c45b813a2908ec9fe8707ed1b11e69a16e91cc4b59a3ef42e"

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

