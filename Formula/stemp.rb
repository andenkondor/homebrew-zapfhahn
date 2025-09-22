class Stemp < Formula
  desc "Easily handle timestamps"
  version "0.0.3"
  url "https://github.com/andenkondor/stemp/releases/download/v0.0.3/stemp.tar.gz"
  sha256 "1d69588dce4e47f6402338b0cba4d40399d086ad6d3efeeada30dd44c3e7b74f"

  depends_on "oven-sh/bun/bun"

  def install
    bin.install "stemp" => "stemp"
  end
end

