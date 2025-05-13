class Qk < Formula
  desc "Manage multiple PHP versions on macOS"
  homepage "https://github.com/jrmd/qk" # Replace with your actual homepage

  # Define the URL to your source code archive and its SHA-256 checksum
  url "https://github.com/jrmd/qk/archive/refs/tags/0.1.0.tar.gz"
  sha256 "319e02a99b69223f6764b3d8a6b3d98b786aa94e99d104acea6c7d64fa86215c"
  depends_on "go" => :build # Specify that Go is needed for building

  def install
    # Build the Go program
    system "go", "build"

    # Install the executable
    bin.install "qk"
  end

  test do
    system "#{bin}/qk"
  end
end
