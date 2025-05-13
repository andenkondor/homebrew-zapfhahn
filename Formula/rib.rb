class Rib < Formula
  desc "[r]esource [i]n [b]rowser - find your Azure resources with fzf"
  version "0.1.0"
  url "https://github.com/andenkondor/rib/releases/download/v0.1.0/rib.tar.gz"
  sha256 "91d6bfe29f60d1d47a895c206fd91c761f3f7e2065656c35fb1efca8754a71b1"

  depends_on "fzf"
  depends_on "azure-cli"

  def install
    bin.install "rib.zsh" => "rib"
  end
end

