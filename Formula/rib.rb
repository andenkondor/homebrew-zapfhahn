class Rib < Formula
  desc "[r]esource [i]n [b]rowser - find your Azure resources with fzf"
  version "tbd"
  url "tbd"
  sha256 "tbd"

  depends_on "fzf"
  depends_on "azure-cli"

  def install
    bin.install "rib.zsh" => "rib"
  end
end

