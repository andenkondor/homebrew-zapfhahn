class Grec < Formula
  desc "[g]it [rec]ent - a cli for showing the latest checked out branches in a repository. Additionally provides a shortcut for checking out"
  version "0.1.7"
  url "https://github.com/andenkondor/grec/releases/download/v0.1.7/grec-macos-amd64.tar.gz"
  sha256 "aa0fdd824dad7c799623fabbcf86dcc1aa560fe46d8af1c1ab01c2cac6d49686"

  def install
    bin.install "grec"
  end
end

