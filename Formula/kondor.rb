class Kondor < Formula
  desc "Full-text search"
  version "0.12.1"

  on_macos do
    url "https://github.com/andenkondor/kondor/releases/download/v0.12.1/kondor-darwin-arm64.tar.gz"
    sha256 "e10576d0527bd63073727bbdf76596fe766edddb9644fa4d0c87ea0f6d9128c9"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andenkondor/kondor/releases/download/v0.12.1/kondor-linux-arm64.tar.gz"
      sha256 "1296e57e84f1a02c5c9ed0ba47473b42e31ed7625cfa7ba60c80b0d40a218d94"
    else
      url "https://github.com/andenkondor/kondor/releases/download/v0.12.1/kondor-linux-x64.tar.gz"
      sha256 "a5b0b1ff592e88e0b177ea0daa946ec9151c5ab97d3b47b1755cbce7dcb089bf"
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
