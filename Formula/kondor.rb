class Kondor < Formula
  desc "Full-text search"
  version "0.6.2"
  url "https://github.com/andenkondor/kondor/releases/download/v0.6.2/kondor.tar.gz"
  sha256 "b463a3d93b9d9de3bd320966d80ebe6dd63f7de1a53519e15aa60d9d247255a9"

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

