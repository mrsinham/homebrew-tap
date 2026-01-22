class Dicomforge < Formula
  desc "CLI tool to generate valid DICOM MRI series for testing"
  homepage "https://github.com/mrsinham/dicomforge"
  version "1.0.10"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/mrsinham/dicomforge/releases/download/v1.0.10/dicomforge-darwin-amd64"
      sha256 "d678eafefb9a2655591188a8a1eacadf73ffdc90de06aadf0fb091df6651136a"

      def install
        bin.install "dicomforge-darwin-amd64" => "dicomforge"
      end
    end

    on_arm do
      url "https://github.com/mrsinham/dicomforge/releases/download/v1.0.10/dicomforge-darwin-arm64"
      sha256 "cd1d3561c845d7e73faf49c62b4f599a5c94061415eec9b68fae5c0f6f5d5785"

      def install
        bin.install "dicomforge-darwin-arm64" => "dicomforge"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mrsinham/dicomforge/releases/download/v1.0.10/dicomforge-linux-amd64"
      sha256 "32e528db2074192c8c6ea54c6f32c4ad61a971ace1ce1c2a645f01e54d38779f"

      def install
        bin.install "dicomforge-linux-amd64" => "dicomforge"
      end
    end

    on_arm do
      url "https://github.com/mrsinham/dicomforge/releases/download/v1.0.10/dicomforge-linux-arm64"
      sha256 "74305cfea96aee7fc9fa18930b230b89ae38fd8c0ad6bc7dfd1263064d9865b4"

      def install
        bin.install "dicomforge-linux-arm64" => "dicomforge"
      end
    end
  end

  test do
    assert_match "dicomforge", shell_output("#{bin}/dicomforge --version")
  end
end
