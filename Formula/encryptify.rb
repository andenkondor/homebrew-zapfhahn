class Encryptify < Formula
  desc "Gpg meets fzf"
  version "tbd"
  url "tbd"
  sha256 "tbd"

  depends_on "fzf"
  depends_on "zx"
  depends_on "neovide"

  def install
    bin.install "encryptify.mjs" => "enc"
  end
end

