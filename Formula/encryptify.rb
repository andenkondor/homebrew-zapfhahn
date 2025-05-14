class Encryptify < Formula
  desc "Gpg meets fzf"
  version "0.1.0"
  url "https://github.com/andenkondor/encryptify/releases/download/v0.1.0/encryptify.tar.gz"
  sha256 "ca2df76454217f3d41c652373cdc6220e7719957be3ba3ed81e83812935273f7"

  depends_on "fzf"
  depends_on "zx"
  depends_on "neovide"

  def install
    bin.install "encryptify.mjs" => "enc"
  end
end

