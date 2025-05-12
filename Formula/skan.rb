class Skan < Formula
  desc "Fzf wrapper around ripgrep"
  version "0.1.4"
  url "https://github.com/andenkondor/skan/releases/download/v0.1.4/skan.tar.gz"
  sha256 "aa7eac3a74906afdb89fd06e5608db22634f05e2270023c9bbb4470197cbca55"

  depends_on "andenkondor/zapfhahn/sops-opener"
  depends_on "bat"
  depends_on "fzf"
  depends_on "neovim"
  depends_on "ripgrep"
  depends_on "sops"

  def install
    bin.install "skan.zsh" => "skan"
  end
end

