class Kondor < Formula
  desc "Full-text search"
  version "0.9.0"
  url "https://github.com/andenkondor/kondor/releases/download/v0.9.0/kondor.tar.gz"
  sha256 "93b62646b3fb79661f4626b2265c161cfb61acb2199353dad376050c65e8af3d"

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

