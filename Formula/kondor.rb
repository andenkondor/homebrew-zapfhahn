class Kondor < Formula
  desc "Full-text search"
  version "0.6.4"
  url "https://github.com/andenkondor/kondor/releases/download/v0.6.4/kondor.tar.gz"
  sha256 "12a51fda3c662fac4a6e35088a2ac0bd162baf38210274de57b95543b215f707"

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

