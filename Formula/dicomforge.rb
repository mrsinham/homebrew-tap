class Dicomforge < Formula
  desc "CLI tool to generate valid DICOM MRI series for testing"
  homepage "https://github.com/mrsinham/dicomforge"
  version "1.0.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/mrsinham/dicomforge/releases/download/v1.0.2/dicomforge-darwin-amd64"
      sha256 "c9a3797317f5c8ca186d76ecfcd06967a5c09c36388a87a69e8e620699f0f485"

      def install
        bin.install "dicomforge-darwin-amd64" => "dicomforge"
      end
    end

    on_arm do
      url "https://github.com/mrsinham/dicomforge/releases/download/v1.0.2/dicomforge-darwin-arm64"
      sha256 "7a4c959cecf3f837de5a0d4526d1b3f5dc31ee2911499ae7022632d37a9db5fe"

      def install
        bin.install "dicomforge-darwin-arm64" => "dicomforge"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mrsinham/dicomforge/releases/download/v1.0.2/dicomforge-linux-amd64"
      sha256 "4b93d5b3e035a41e4f4438d5845b0eec37bc56338212700fa40b486ace005edf"

      def install
        bin.install "dicomforge-linux-amd64" => "dicomforge"
      end
    end

    on_arm do
      url "https://github.com/mrsinham/dicomforge/releases/download/v1.0.2/dicomforge-linux-arm64"
      sha256 "7aca2035a0720d06e6e68215030b867e29ad177fea741b31ab8cc2ec44287db9"

      def install
        bin.install "dicomforge-linux-arm64" => "dicomforge"
      end
    end
  end

  test do
    assert_match "dicomforge", shell_output("#{bin}/dicomforge --version")
  end
end
