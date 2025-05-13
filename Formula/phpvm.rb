class Phpvm < Formula
  desc "Manage multiple PHP versions on macOS"
  homepage "https://github.com/jrmd/phpvm" # Replace with your actual homepage

  # Define the URL to your source code archive and its SHA-256 checksum
  url "https://github.com/jrmd/phpvm/archive/refs/tags/1.1.1.tar.gz"
  sha256 "086ba6dbc242cb2e84e40a7092009cd5ab1c523ff4773e9059d1c25ec73ca6f7"
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
