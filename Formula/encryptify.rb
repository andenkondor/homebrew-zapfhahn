class Encryptify < Formula
  desc "Gpg meets fzf"
  version "0.1.1"
  url "https://github.com/andenkondor/encryptify/releases/download/v0.1.1/encryptify.tar.gz"
  sha256 "68280cecccbb10683c15b838e001523472adf99815a8e595631badab61b32f60"

  depends_on "fzf"
  depends_on "zx"

  def install
    bin.install "encryptify.mjs" => "enc"
  end
end

