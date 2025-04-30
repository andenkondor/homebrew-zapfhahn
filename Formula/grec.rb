class Grec < Formula
  desc "[g]it [rec]ent - a cli for showing the latest checked out branches in a repository. Additionally provides a shortcut for checking out"
  version "0.1.6"
  url "https://github.com/andenkondor/grec/releases/download/v0.1.6/grec-macos-amd64.tar.gz"
  sha256 "a6bc22aa44f164dd38e085e84646c10226b207abfc24bca8d5a28117ba18db90"

  def
    bin.install "grec"
  end
end

