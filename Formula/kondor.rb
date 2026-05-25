class Kondor < Formula
  desc "Full-text search"
  version "0.6.1"
  url "https://github.com/andenkondor/kondor/releases/download/v0.6.1/kondor.tar.gz"
  sha256 "168db96d49b1fd60dec2d9fd6035b4e41ad515fa9eff3e010cbec8ca08b2d71e"

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

