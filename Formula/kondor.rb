class Kondor < Formula
  desc "Full-text search"
  version "0.7.2"
  url "https://github.com/andenkondor/kondor/releases/download/v0.7.2/kondor.tar.gz"
  sha256 "7190012816e13ed0daa5501343c8e92b6d15e68787076ecb27eaa286ad26886f"

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

