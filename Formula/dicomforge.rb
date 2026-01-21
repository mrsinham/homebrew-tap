class Dicomforge < Formula
  desc "CLI tool to generate valid DICOM MRI series for testing"
  homepage "https://github.com/mrsinham/dicomforge"
  version "1.0.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/mrsinham/dicomforge/releases/download/v1.0.4/dicomforge-darwin-amd64"
      sha256 "121737451964fd9ad1debd74d2efa3cfea1aa7daa9a6543220f12d1eee80828a"

      def install
        bin.install "dicomforge-darwin-amd64" => "dicomforge"
      end
    end

    on_arm do
      url "https://github.com/mrsinham/dicomforge/releases/download/v1.0.4/dicomforge-darwin-arm64"
      sha256 "0ca02ecab0cc70997abad68da51f018fb00aa17280bed80f81479754ecabe7bd"

      def install
        bin.install "dicomforge-darwin-arm64" => "dicomforge"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mrsinham/dicomforge/releases/download/v1.0.4/dicomforge-linux-amd64"
      sha256 "28453ccbf5dc6924a4b1f4605bde1424165517de43e4493f17271797e785d56e"

      def install
        bin.install "dicomforge-linux-amd64" => "dicomforge"
      end
    end

    on_arm do
      url "https://github.com/mrsinham/dicomforge/releases/download/v1.0.4/dicomforge-linux-arm64"
      sha256 "ee9a084f18af2e5577aaa2fe3e85e587510f5802d44a4da2dde5c76a25b67544"

      def install
        bin.install "dicomforge-linux-arm64" => "dicomforge"
      end
    end
  end

  test do
    assert_match "dicomforge", shell_output("#{bin}/dicomforge --version")
  end
end
