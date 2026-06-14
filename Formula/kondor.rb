class Kondor < Formula
  desc "Full-text search"
  version "0.11.2"

  on_macos do
    url "https://github.com/andenkondor/kondor/releases/download/v0.11.2/kondor-darwin-arm64.tar.gz"
    sha256 "b357a8c08a234e6a5b0a4e6c871305f25c7cf7b2f4bf73c0d96868607cc94d50"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andenkondor/kondor/releases/download/v0.11.2/kondor-linux-arm64.tar.gz"
      sha256 "e248a3cc05760b6ebfd7351deb3d99622359b4ba1efe354314e939c04c15a4fa"
    else
      url "https://github.com/andenkondor/kondor/releases/download/v0.11.2/kondor-linux-x64.tar.gz"
      sha256 "32a81d20259eb907d9f912d9ef9af0417f166832c233d5fc17a55fb23c04e245"
    end
  end

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
