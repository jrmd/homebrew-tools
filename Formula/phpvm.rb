class Phpvm < Formula
  desc "Manage multiple PHP versions on macOS"
  homepage "https://github.com/jrmd/phpvm" # Replace with your actual homepage

  # Define the URL to your source code archive and its SHA-256 checksum
  url "https://github.com/jrmd/phpvm/archive/refs/tags/1.1.0.tar.gz"
  sha256 "e3bedc6339de13db9035ac15134bd0b467152da79281e98686e4108969111641"
  depends_on "go" => :build # Specify that Go is needed for building

  def install
    # Build the Go program
    system "go", "build"

    # Install the executable
    bin.install "phpvm"
  end

  test do
    system "#{bin}/phpvm", "version"
  end
end
