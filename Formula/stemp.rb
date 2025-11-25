class Stemp < Formula
  desc "Easily handle timestamps"
  version "0.1.2"
  url "https://github.com/andenkondor/stemp/releases/download/v0.1.2/stemp.tar.gz"
  sha256 "4378cd7e06050ad05f42e5e443282472bed213b4c37040e2f9a4b40d312aa14b"

  depends_on "oven-sh/bun/bun"

  def install
    bin.install "stemp" => "stemp"
  end
end

