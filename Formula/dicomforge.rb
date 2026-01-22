class Dicomforge < Formula
  desc "CLI tool to generate valid DICOM MRI series for testing"
  homepage "https://github.com/mrsinham/dicomforge"
  version "1.0.9"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/mrsinham/dicomforge/releases/download/v1.0.9/dicomforge-darwin-amd64"
      sha256 "d03efb59a87f819541c37b9cfe42d4f4586180b316955fa692b4b80d92bc4c00"

      def install
        bin.install "dicomforge-darwin-amd64" => "dicomforge"
      end
    end

    on_arm do
      url "https://github.com/mrsinham/dicomforge/releases/download/v1.0.9/dicomforge-darwin-arm64"
      sha256 "cc736f1a385f3ef8f1b0039e6e08bfd88ca374bd8ae5600c7d37b0df0a76327d"

      def install
        bin.install "dicomforge-darwin-arm64" => "dicomforge"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mrsinham/dicomforge/releases/download/v1.0.9/dicomforge-linux-amd64"
      sha256 "bbf846a123e44c0340f0b6cba5a9cd9258dc62112cd4eb19a413a530bf4acd88"

      def install
        bin.install "dicomforge-linux-amd64" => "dicomforge"
      end
    end

    on_arm do
      url "https://github.com/mrsinham/dicomforge/releases/download/v1.0.9/dicomforge-linux-arm64"
      sha256 "d1d0932ea5e56b9f0a3ce686be05f4b11fc87f061c6fe72436f0743dc89f419a"

      def install
        bin.install "dicomforge-linux-arm64" => "dicomforge"
      end
    end
  end

  test do
    assert_match "dicomforge", shell_output("#{bin}/dicomforge --version")
  end
end
