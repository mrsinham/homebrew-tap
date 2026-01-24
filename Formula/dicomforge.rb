class Dicomforge < Formula
  desc "CLI tool to generate valid DICOM MRI series for testing"
  homepage "https://github.com/mrsinham/dicomforge"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/mrsinham/dicomforge/releases/download/v1.1.0/dicomforge-darwin-amd64"
      sha256 "b4ab40994520e498da28321d34179508464fade6321d90f79cd799ce5a4c69d3"

      def install
        bin.install "dicomforge-darwin-amd64" => "dicomforge"
      end
    end

    on_arm do
      url "https://github.com/mrsinham/dicomforge/releases/download/v1.1.0/dicomforge-darwin-arm64"
      sha256 "3b8720687ddcb219462e5ee52ec6f687cb694cf1bfcdde433fadf91e681ef22f"

      def install
        bin.install "dicomforge-darwin-arm64" => "dicomforge"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mrsinham/dicomforge/releases/download/v1.1.0/dicomforge-linux-amd64"
      sha256 "b9fa0524c39eb8037fa1c07b96866ff872878af0f9ea83f25bcbba1388a479b0"

      def install
        bin.install "dicomforge-linux-amd64" => "dicomforge"
      end
    end

    on_arm do
      url "https://github.com/mrsinham/dicomforge/releases/download/v1.1.0/dicomforge-linux-arm64"
      sha256 "095bfbf8b32dbafcba1d6295434d10d3381fd8adfba001dde7b36ebaeb92aa9c"

      def install
        bin.install "dicomforge-linux-arm64" => "dicomforge"
      end
    end
  end

  test do
    assert_match "dicomforge", shell_output("#{bin}/dicomforge --version")
  end
end
