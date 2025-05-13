class Rib < Formula
  desc "[r]esource [i]n [b]rowser - find your Azure resources with fzf"
  version "0.1.1"
  url "https://github.com/andenkondor/rib/releases/download/v0.1.1/rib.tar.gz"
  sha256 "57e8bbcc413c4c50407af610ef8ea1f40dbcf0ef595239e67297347c7f8e5307"

  depends_on "fzf"
  depends_on "azure-cli"

  def install
    bin.install "rib.zsh" => "rib"
  end
end

