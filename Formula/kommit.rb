class Kommit < Formula
  desc "Easily write conventional commit messages"
  version "0.1.0"
  url "https://github.com/andenkondor/kommit/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "50547e00017b4e768af637d4a3b591f692d8d2bd326fec178d0b85fcd9be7b17"

  def install
    bin.install "kommit.zsh" => "kommit"
  end
end

