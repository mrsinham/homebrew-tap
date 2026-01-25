class Dicomforge < Formula
  desc "CLI tool to generate valid DICOM MRI series for testing"
  homepage "https://github.com/mrsinham/dicomforge"
  version "1.3.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/mrsinham/dicomforge/releases/download/v1.3.0/dicomforge-darwin-amd64"
      sha256 "506a573212567c6fa6bea7824f16d2056f8200d5959592ee5ff3ad1d3d9b68c9"

      def install
        bin.install "dicomforge-darwin-amd64" => "dicomforge"
      end
    end

    on_arm do
      url "https://github.com/mrsinham/dicomforge/releases/download/v1.3.0/dicomforge-darwin-arm64"
      sha256 "5af462c298e06cb8993cdfcc7445945bd3753cc5d78b85dc3834112869ecea17"

      def install
        bin.install "dicomforge-darwin-arm64" => "dicomforge"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mrsinham/dicomforge/releases/download/v1.3.0/dicomforge-linux-amd64"
      sha256 "3e223e5ecd0084bf94490c314a121994948bd3a8e9f57bc60190f9731da94438"

      def install
        bin.install "dicomforge-linux-amd64" => "dicomforge"
      end
    end

    on_arm do
      url "https://github.com/mrsinham/dicomforge/releases/download/v1.3.0/dicomforge-linux-arm64"
      sha256 "9ac66d8716fb0db8d858e31519cff1f44ee102e8e0d144c10567e2efc73ce727"

      def install
        bin.install "dicomforge-linux-arm64" => "dicomforge"
      end
    end
  end

  test do
    assert_match "dicomforge", shell_output("#{bin}/dicomforge --version")
  end
end
