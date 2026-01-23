class Dicomforge < Formula
  desc "CLI tool to generate valid DICOM MRI series for testing"
  homepage "https://github.com/mrsinham/dicomforge"
  version "1.0.13"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/mrsinham/dicomforge/releases/download/v1.0.13/dicomforge-darwin-amd64"
      sha256 "f7812d2c57e7bd5b4791c57d6264f2a4c902728c48cdc9bd3c13cfd929448647"

      def install
        bin.install "dicomforge-darwin-amd64" => "dicomforge"
      end
    end

    on_arm do
      url "https://github.com/mrsinham/dicomforge/releases/download/v1.0.13/dicomforge-darwin-arm64"
      sha256 "1f906d65c0e93496b593b2de884c0d9c6507c29d57ab272195d8d8c71460dd2d"

      def install
        bin.install "dicomforge-darwin-arm64" => "dicomforge"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mrsinham/dicomforge/releases/download/v1.0.13/dicomforge-linux-amd64"
      sha256 "46af8f8be729d89a77f616001721a673f10703c17e0b0e004b80f3a62eaf0e2c"

      def install
        bin.install "dicomforge-linux-amd64" => "dicomforge"
      end
    end

    on_arm do
      url "https://github.com/mrsinham/dicomforge/releases/download/v1.0.13/dicomforge-linux-arm64"
      sha256 "e56d55086cf4360fa2c003115e67ad9f46adbab09d335c8bb42a8496be2993d7"

      def install
        bin.install "dicomforge-linux-arm64" => "dicomforge"
      end
    end
  end

  test do
    assert_match "dicomforge", shell_output("#{bin}/dicomforge --version")
  end
end
