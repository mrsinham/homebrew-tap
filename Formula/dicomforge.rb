class Dicomforge < Formula
  desc "CLI tool to generate valid DICOM MRI series for testing"
  homepage "https://github.com/mrsinham/dicomforge"
  version "1.6.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/mrsinham/dicomforge/releases/download/v1.6.0/dicomforge-darwin-amd64"
      sha256 "33abcef20db6bec4b035e43bfb46af6691b3017133024cedfd5162d867e97f3f"

      def install
        bin.install "dicomforge-darwin-amd64" => "dicomforge"
      end
    end

    on_arm do
      url "https://github.com/mrsinham/dicomforge/releases/download/v1.6.0/dicomforge-darwin-arm64"
      sha256 "5d4239eadc96c2998c169c369134ed6ed8de6ed50cbd6fa91ba56f461a9ead45"

      def install
        bin.install "dicomforge-darwin-arm64" => "dicomforge"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mrsinham/dicomforge/releases/download/v1.6.0/dicomforge-linux-amd64"
      sha256 "c3b3405ac4a1691869cce1c66fb33cc6904deab8d6b605c4215f4d613aa13123"

      def install
        bin.install "dicomforge-linux-amd64" => "dicomforge"
      end
    end

    on_arm do
      url "https://github.com/mrsinham/dicomforge/releases/download/v1.6.0/dicomforge-linux-arm64"
      sha256 "158ccddb2af64d2851c746763b09993a700e2fc0983b360dd430fb9ecb2f4953"

      def install
        bin.install "dicomforge-linux-arm64" => "dicomforge"
      end
    end
  end

  test do
    assert_match "dicomforge", shell_output("#{bin}/dicomforge --version")
  end
end
