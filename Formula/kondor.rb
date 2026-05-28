class Kondor < Formula
  desc "Full-text search"
  version "0.6.5"
  url "https://github.com/andenkondor/kondor/releases/download/v0.6.5/kondor.tar.gz"
  sha256 "dffe96cce3809adc103632cdfe4306514330cad6a68416dada28ec387aee199b"

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

