class Dicomforge < Formula
  desc "CLI tool to generate valid DICOM MRI series for testing"
  homepage "https://github.com/mrsinham/dicomforge"
  version "1.0.11"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/mrsinham/dicomforge/releases/download/v1.0.11/dicomforge-darwin-amd64"
      sha256 "3c848667804cd51298030b314a7ed05b8d698572da77826c942b7d5f53505cb2"

      def install
        bin.install "dicomforge-darwin-amd64" => "dicomforge"
      end
    end

    on_arm do
      url "https://github.com/mrsinham/dicomforge/releases/download/v1.0.11/dicomforge-darwin-arm64"
      sha256 "fcc6849abfddf86792812615d7ea0e27a746885ef750a4d86c1bb5e8d3151bbf"

      def install
        bin.install "dicomforge-darwin-arm64" => "dicomforge"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mrsinham/dicomforge/releases/download/v1.0.11/dicomforge-linux-amd64"
      sha256 "215f2d02e923d44ee6ee41666bfd217dacbc9f05ba13e3e4fade89539a76f370"

      def install
        bin.install "dicomforge-linux-amd64" => "dicomforge"
      end
    end

    on_arm do
      url "https://github.com/mrsinham/dicomforge/releases/download/v1.0.11/dicomforge-linux-arm64"
      sha256 "cff1aa9892025eaa5f3735cee90a99727198c5743a18d0bdcb4a09250bce380c"

      def install
        bin.install "dicomforge-linux-arm64" => "dicomforge"
      end
    end
  end

  test do
    assert_match "dicomforge", shell_output("#{bin}/dicomforge --version")
  end
end
