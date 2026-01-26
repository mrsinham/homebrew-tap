class Dicomforge < Formula
  desc "CLI tool to generate valid DICOM MRI series for testing"
  homepage "https://github.com/mrsinham/dicomforge"
  version "1.4.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/mrsinham/dicomforge/releases/download/v1.4.0/dicomforge-darwin-amd64"
      sha256 "f822730348314748b0983d2256de263c46838aded54dced944bf02e148a93e01"

      def install
        bin.install "dicomforge-darwin-amd64" => "dicomforge"
      end
    end

    on_arm do
      url "https://github.com/mrsinham/dicomforge/releases/download/v1.4.0/dicomforge-darwin-arm64"
      sha256 "fca0c6004e19468078fc5955aa522fedf0983a50008e15dc46c6a090ee694664"

      def install
        bin.install "dicomforge-darwin-arm64" => "dicomforge"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mrsinham/dicomforge/releases/download/v1.4.0/dicomforge-linux-amd64"
      sha256 "e5249f75048ae4d23edd547e385472d2618037cb8521795d04dd84030d9d2ec0"

      def install
        bin.install "dicomforge-linux-amd64" => "dicomforge"
      end
    end

    on_arm do
      url "https://github.com/mrsinham/dicomforge/releases/download/v1.4.0/dicomforge-linux-arm64"
      sha256 "54a39c51165b39829c1b9ce1e068ab1a151ed5f5fb402c49210844e1da65b3dd"

      def install
        bin.install "dicomforge-linux-arm64" => "dicomforge"
      end
    end
  end

  test do
    assert_match "dicomforge", shell_output("#{bin}/dicomforge --version")
  end
end
