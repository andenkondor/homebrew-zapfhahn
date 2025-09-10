class Grec < Formula
  desc "[g]it [rec]ent - a cli for showing the latest checked out branches in a repository. Additionally provides a shortcut for checking out"
  version "0.3.0"
  url "https://github.com/andenkondor/grec/releases/download/v0.3.0/grec-macos-amd64.tar.gz"
  sha256 "25630544da9cc610804c40a7cf5e1efe71db9a1bef7042d45f8fa26d57c64487"

  def install
    bin.install "grec"
  end
end

