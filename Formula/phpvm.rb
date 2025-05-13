class Phpvm < Formula
  desc "Manage multiple PHP versions on macOS"
  homepage "https://github.com/jrmd/phpvm" # Replace with your actual homepage

  # Define the URL to your source code archive and its SHA-256 checksum
  url "https://github.com/jrmd/phpvm/archive/refs/tags/1.0.0.tar.gz"
  sha256 "ed071fb074f8ca7bb4c0311d1bcb0c7a56a94e6102f58bac3cfd588f0135eea3"
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
