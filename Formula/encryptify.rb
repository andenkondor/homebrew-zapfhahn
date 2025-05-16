class Encryptify < Formula
  desc "Gpg meets fzf"
  version "0.1.2"
  url "https://github.com/andenkondor/encryptify/releases/download/v0.1.2/encryptify.tar.gz"
  sha256 "a2398843c0fdc84d0a29fc73db975c73c2e003e5ce2b6d8c8685b7b419c1900d"

  depends_on "fzf"
  depends_on "zx"

  def install
    bin.install "encryptify.mjs" => "enc"
  end
end

