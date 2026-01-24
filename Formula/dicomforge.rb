class Dicomforge < Formula
  desc "CLI tool to generate valid DICOM MRI series for testing"
  homepage "https://github.com/mrsinham/dicomforge"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/mrsinham/dicomforge/releases/download/v1.2.0/dicomforge-darwin-amd64"
      sha256 "3b86e83400d2b0a17dc7ed16316131f3c59829ec7f4db46553537ae6d42feb8a"

      def install
        bin.install "dicomforge-darwin-amd64" => "dicomforge"
      end
    end

    on_arm do
      url "https://github.com/mrsinham/dicomforge/releases/download/v1.2.0/dicomforge-darwin-arm64"
      sha256 "a9e0d863c8cdde61be8ece07a5aba1e6d274283b0578c56b20373e735b912110"

      def install
        bin.install "dicomforge-darwin-arm64" => "dicomforge"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mrsinham/dicomforge/releases/download/v1.2.0/dicomforge-linux-amd64"
      sha256 "9c63cbaced1e67b1a9d2093e7ec1fccfd46c5cc85f5ef3081c45b76ef8e91e7c"

      def install
        bin.install "dicomforge-linux-amd64" => "dicomforge"
      end
    end

    on_arm do
      url "https://github.com/mrsinham/dicomforge/releases/download/v1.2.0/dicomforge-linux-arm64"
      sha256 "d7d9a1f3214dadd8494a1bed394b3e5f0c522a3de3561276822e258d7295f1c0"

      def install
        bin.install "dicomforge-linux-arm64" => "dicomforge"
      end
    end
  end

  test do
    assert_match "dicomforge", shell_output("#{bin}/dicomforge --version")
  end
end
