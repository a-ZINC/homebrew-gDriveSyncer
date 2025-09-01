class Gdrivesync < Formula
  desc "Command-line tool for synchronizing files with Google Drive"
  homepage "https://github.com/a-ZINC/gDriveSyncer"
  url "https://github.com/a-ZINC/gDriveSyncer/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "f06dca62bac124cda460c3c4cbb4f3df6f8c2d82e44f589cbbc1594fdcf76bb8"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"gdrivesync", "."
  end

  test do
    system "#{bin}/gdrivesync", "--help"
  end
end
