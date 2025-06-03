class Encryptify < Formula
  desc "Gpg meets fzf"
  version "0.2.0"
  url "https://github.com/andenkondor/encryptify/releases/download/v0.2.0/encryptify.tar.gz"
  sha256 "10a34e55b56d5f63b8986a465ba16bf168b622ad1c33f61276e454629d7ef589"

  depends_on "fzf"
  depends_on "zx"

  def install
    bin.install "encryptify.mjs" => "enc"
  end
end

