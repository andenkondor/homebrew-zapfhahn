class Encryptify < Formula
  desc "Gpg meets fzf"
  version "0.2.3"
  url "https://github.com/andenkondor/encryptify/releases/download/v0.2.3/encryptify.tar.gz"
  sha256 "f5178f836fc345ff90c781a6e83104fad5726f554db9f6193fb98b1f6bc3e9b2"

  depends_on "fzf"
  depends_on "zx"

  def install
    bin.install "encryptify.mjs" => "enc"
  end
end

