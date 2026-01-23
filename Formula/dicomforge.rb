class Dicomforge < Formula
  desc "CLI tool to generate valid DICOM MRI series for testing"
  homepage "https://github.com/mrsinham/dicomforge"
  version "1.0.14"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/mrsinham/dicomforge/releases/download/v1.0.14/dicomforge-darwin-amd64"
      sha256 "b1427723db90496774b4211217ea16b7481dd913a32ae0de7032648ca7a9257e"

      def install
        bin.install "dicomforge-darwin-amd64" => "dicomforge"
      end
    end

    on_arm do
      url "https://github.com/mrsinham/dicomforge/releases/download/v1.0.14/dicomforge-darwin-arm64"
      sha256 "9bbec0cfa16dc180e8ddab0a9cbd1b18e5ad992813a2fd3b8513981c9629fef3"

      def install
        bin.install "dicomforge-darwin-arm64" => "dicomforge"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mrsinham/dicomforge/releases/download/v1.0.14/dicomforge-linux-amd64"
      sha256 "8cc942415af4acf5f56e0b07660e90628cff3dc9384bcfdf24716de9b04dff98"

      def install
        bin.install "dicomforge-linux-amd64" => "dicomforge"
      end
    end

    on_arm do
      url "https://github.com/mrsinham/dicomforge/releases/download/v1.0.14/dicomforge-linux-arm64"
      sha256 "ab227cfb1f7ecfdedcef5a9a44bb6b55ea1896d73e04d36f709f17b3d68b12fe"

      def install
        bin.install "dicomforge-linux-arm64" => "dicomforge"
      end
    end
  end

  test do
    assert_match "dicomforge", shell_output("#{bin}/dicomforge --version")
  end
end
