class Stemp < Formula
  desc "Easily handle timestamps"
  version "0.0.5"
  url "https://github.com/andenkondor/stemp/releases/download/v0.0.5/stemp.tar.gz"
  sha256 "e2c5851ff35d5c7aae066a219e0c8184abf34d1db926e15b97c9e526061087d3"

  depends_on "oven-sh/bun/bun"

  def install
    bin.install "stemp" => "stemp"
  end
end

