class Stemp < Formula
  desc "Easily handle timestamps"
  version "0.0.1"
  url "https://github.com/andenkondor/stemp/releases/download/v0.0.1/stemp.tar.gz"
  sha256 "cbc06166a298327a325510c3789fa9dc2106c4a21fca00c69758545a5ad21f26"

  def install
    bin.install "stemp" => "stemp"
  end
end

