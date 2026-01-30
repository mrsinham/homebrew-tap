class Dicomforge < Formula
  desc "CLI tool to generate valid DICOM MRI series for testing"
  homepage "https://github.com/mrsinham/dicomforge"
  version "1.5.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/mrsinham/dicomforge/releases/download/v1.5.0/dicomforge-darwin-amd64"
      sha256 "f1c1bcca619d8b5bce84ad723b43ca86e6beee15f4825e902533d39077f9c957"

      def install
        bin.install "dicomforge-darwin-amd64" => "dicomforge"
      end
    end

    on_arm do
      url "https://github.com/mrsinham/dicomforge/releases/download/v1.5.0/dicomforge-darwin-arm64"
      sha256 "8bd345068cb7b27269fb399012e51fbe0337c16c4fdf22477548ab0780eb25b2"

      def install
        bin.install "dicomforge-darwin-arm64" => "dicomforge"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mrsinham/dicomforge/releases/download/v1.5.0/dicomforge-linux-amd64"
      sha256 "0eade2385f4d27617106555cc4c2dab5c8d9e67cbb0289898b73ed7e4d7c899d"

      def install
        bin.install "dicomforge-linux-amd64" => "dicomforge"
      end
    end

    on_arm do
      url "https://github.com/mrsinham/dicomforge/releases/download/v1.5.0/dicomforge-linux-arm64"
      sha256 "7299cc09ef922bd3ffa80ddf08fcdc4f0e987e0d715b76b5e1b1cad2aecfffbd"

      def install
        bin.install "dicomforge-linux-arm64" => "dicomforge"
      end
    end
  end

  test do
    assert_match "dicomforge", shell_output("#{bin}/dicomforge --version")
  end
end
