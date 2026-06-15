class Kondor < Formula
  desc "Full-text search"
  version "0.12.2"

  on_macos do
    url "https://github.com/andenkondor/kondor/releases/download/v0.12.2/kondor-darwin-arm64.tar.gz"
    sha256 "45b934639071708957d5a616b58e0c25672c6bc4214ab371b21e8a2ffb96f6d5"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andenkondor/kondor/releases/download/v0.12.2/kondor-linux-arm64.tar.gz"
      sha256 "bcfee0c6dc9a93f196f2dec302a7ade58cf66ae0e981423c62e6339258a64be5"
    else
      url "https://github.com/andenkondor/kondor/releases/download/v0.12.2/kondor-linux-x64.tar.gz"
      sha256 "d9164fbdccfdbad2955a187e825ae06b31f38fb0aaead78ae1c87c5aa6d6794a"
    end
  end

  depends_on "oven-sh/bun/bun"
  depends_on "ripgrep"
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
