class QfExec < Formula
  desc "Fill neovim's quickfix list with any command's output"
  version "tbd"
  url "tbd"
  sha256 "tbd"


  depends_on "zsh"
  depends_on "neovim"

  def install
    bin.install "qf-exec.zsh" => "qf"
  end
end

