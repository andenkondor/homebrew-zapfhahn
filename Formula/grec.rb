class Grec < Formula
  desc "[g]it [rec]ent - a cli for showing the latest checked out branches in a repository. Additionally provides a shortcut for checking out"
  version "0.2.0"
  url "https://github.com/andenkondor/grec/releases/download/v0.2.0/grec-macos-amd64.tar.gz"
  sha256 "a10ffecb17fee712a5a0020c10dc7a252b3a4b28d2fafbfeddf7caa9497f866a"

  def install
    bin.install "grec"
  end
end

