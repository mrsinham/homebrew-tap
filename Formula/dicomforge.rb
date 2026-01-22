class Dicomforge < Formula
  desc "CLI tool to generate valid DICOM MRI series for testing"
  homepage "https://github.com/mrsinham/dicomforge"
  version "1.0.12"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/mrsinham/dicomforge/releases/download/v1.0.12/dicomforge-darwin-amd64"
      sha256 "bc90c64ca881a1d07d18e349d7ed0cd00699c96c4bed1636b146f5f848198c60"

      def install
        bin.install "dicomforge-darwin-amd64" => "dicomforge"
      end
    end

    on_arm do
      url "https://github.com/mrsinham/dicomforge/releases/download/v1.0.12/dicomforge-darwin-arm64"
      sha256 "bb9293886e3c39da23efbdc9d512299bf5b88de1a31677f6a8e018eb3473dd18"

      def install
        bin.install "dicomforge-darwin-arm64" => "dicomforge"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mrsinham/dicomforge/releases/download/v1.0.12/dicomforge-linux-amd64"
      sha256 "4e0c367a526311a827bf147972edd39ebdb41e0c98b75f45e9576d018acca2c9"

      def install
        bin.install "dicomforge-linux-amd64" => "dicomforge"
      end
    end

    on_arm do
      url "https://github.com/mrsinham/dicomforge/releases/download/v1.0.12/dicomforge-linux-arm64"
      sha256 "1b1ff9d1317107a55578be74646da9a70147088e9ad4ae77e75e58c02cc29d8d"

      def install
        bin.install "dicomforge-linux-arm64" => "dicomforge"
      end
    end
  end

  test do
    assert_match "dicomforge", shell_output("#{bin}/dicomforge --version")
  end
end
