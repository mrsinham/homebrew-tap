class Dicomforge < Formula
  desc "CLI tool to generate valid DICOM MRI series for testing"
  homepage "https://github.com/mrsinham/dicomforge"
  version "1.0.15"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/mrsinham/dicomforge/releases/download/v1.0.15/dicomforge-darwin-amd64"
      sha256 "915b1b635849bc980cb8fc4cfbac320dbe6c79bc56cadcd9766bdbd037529f26"

      def install
        bin.install "dicomforge-darwin-amd64" => "dicomforge"
      end
    end

    on_arm do
      url "https://github.com/mrsinham/dicomforge/releases/download/v1.0.15/dicomforge-darwin-arm64"
      sha256 "c4152c3c94787bcf7e227895a9a07d5de5286c542236bf02a234901e4bb078e0"

      def install
        bin.install "dicomforge-darwin-arm64" => "dicomforge"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mrsinham/dicomforge/releases/download/v1.0.15/dicomforge-linux-amd64"
      sha256 "aab54293a44c2e72413f25b427cd22433a8271fd66e931c1d32aca16d6047188"

      def install
        bin.install "dicomforge-linux-amd64" => "dicomforge"
      end
    end

    on_arm do
      url "https://github.com/mrsinham/dicomforge/releases/download/v1.0.15/dicomforge-linux-arm64"
      sha256 "6f89f24dfcde493bca46230a1ff5561253d975d08efb0ba5ffc942aa821e3a5b"

      def install
        bin.install "dicomforge-linux-arm64" => "dicomforge"
      end
    end
  end

  test do
    assert_match "dicomforge", shell_output("#{bin}/dicomforge --version")
  end
end
