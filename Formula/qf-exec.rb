class QfExec < Formula
  desc "Fill neovim's quickfix list with any command's output"
  version "0.1.0"
  url "https://github.com/andenkondor/qf-exec/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "8366ab601b010139f781c6f15d10cb43816e409f9ac81b83a07124238e463147"


  depends_on "zsh"
  depends_on "neovim"

  def install
    bin.install "qf-exec.zsh" => "qf"
  end
end

