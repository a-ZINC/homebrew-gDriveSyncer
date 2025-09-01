class Gdrivesync < Formula
  desc "Command-line tool for synchronizing files with Google Drive"
  homepage "https://github.com/a-ZINC/gDriveSyncer"
  url "https://github.com/a-ZINC/gDriveSyncer/archive/refs/tags/v1.1.1.tar.gz"
  sha256 "9a29d40381df1c20b2855b9e7c7b1efce54145a87cc98643276fc8e84a5ffcc7"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"gdrivesync", "."
  end

  test do
    system "#{bin}/gdrivesync", "--help"
  end
end
