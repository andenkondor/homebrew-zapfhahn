class Encryptify < Formula
  desc "Gpg meets fzf"
  version "0.2.1"
  url "https://github.com/andenkondor/encryptify/releases/download/v0.2.1/encryptify.tar.gz"
  sha256 "15a25f637c884f15ceb04134a408ca1e438e6ed3f3a4d148f74fc41bc9e895da"

  depends_on "fzf"
  depends_on "zx"

  def install
    bin.install "encryptify.mjs" => "enc"
  end
end

