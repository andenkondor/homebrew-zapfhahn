class Encryptify < Formula
  desc "Gpg meets fzf"
  version "0.2.2"
  url "https://github.com/andenkondor/encryptify/releases/download/v0.2.2/encryptify.tar.gz"
  sha256 "86cec8d33ea2abf5d6e3877dca96038fd0ed679b43a203217f61e0794d9420b4"

  depends_on "fzf"
  depends_on "zx"

  def install
    bin.install "encryptify.mjs" => "enc"
  end
end

