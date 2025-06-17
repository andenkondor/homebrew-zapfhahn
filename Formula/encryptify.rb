class Encryptify < Formula
  desc "Gpg meets fzf"
  version "0.3.0"
  url "https://github.com/andenkondor/encryptify/releases/download/v0.3.0/encryptify.tar.gz"
  sha256 "b3a417feab172c0cde85b1d2e3985936ccbce2b8f91f55aaf85742f99988f6b5"

  depends_on "fzf"
  depends_on "zx"

  def install
    bin.install "encryptify.mjs" => "enc"
  end
end

