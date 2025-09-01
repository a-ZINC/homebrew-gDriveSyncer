class Gdrivesync < Formula
  desc "Command-line tool for synchronizing files with Google Drive"
  homepage "https://github.com/a-ZINC/gDriveSyncer"
  url "https://github.com/a-ZINC/gDriveSyncer/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "bd203cc2729c8801670eeae45033738beacbf67ece639597c6b16356b06b3cec"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"gdrivesync", "."
  end

  test do
    system "#{bin}/gdrivesync", "--help"
  end
end
