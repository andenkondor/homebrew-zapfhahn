class Kondor < Formula
  desc "Full-text search"
  version "0.12.4"

  on_macos do
    url "https://github.com/andenkondor/kondor/releases/download/v0.12.4/kondor-darwin-arm64.tar.gz"
    sha256 "e241a5642866e4d9d74f79d8f7dd496459bdba1e50de1dae51a214414d9025f3"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andenkondor/kondor/releases/download/v0.12.4/kondor-linux-arm64.tar.gz"
      sha256 "6fcb74ab0bf7321c5d9461f2395980c9334c2cb70a78f3715c049aa1e2cbc1cc"
    else
      url "https://github.com/andenkondor/kondor/releases/download/v0.12.4/kondor-linux-x64.tar.gz"
      sha256 "efdb403671c679668a44964b848bede40a6926d93b1fdf52d82ea8f61f09e7cc"
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
