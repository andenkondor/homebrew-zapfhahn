class Kondor < Formula
  desc "Full-text search"
  version "0.12.3"

  on_macos do
    url "https://github.com/andenkondor/kondor/releases/download/v0.12.3/kondor-darwin-arm64.tar.gz"
    sha256 "0eb6364c608124d44434554284127999f1dfbc4cb0c4b9bcb660be73784d518a"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andenkondor/kondor/releases/download/v0.12.3/kondor-linux-arm64.tar.gz"
      sha256 "e83efd00d7c69ac360f69cc52756114f8db58cd73b95a92f7d55c4c5356c6318"
    else
      url "https://github.com/andenkondor/kondor/releases/download/v0.12.3/kondor-linux-x64.tar.gz"
      sha256 "8f76df2813d8801942312cc87cd694338bc7f7edca3e4a82e29e90987ad7071f"
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
