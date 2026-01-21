class Dicomforge < Formula
  desc "CLI tool to generate valid DICOM MRI series for testing"
  homepage "https://github.com/mrsinham/dicomforge"
  version "1.0.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/mrsinham/dicomforge/releases/download/v1.0.3/dicomforge-darwin-amd64"
      sha256 "caaf1a86494aca813a6e2064e0fc0bae2d58ade0578fb432e54077802b474702"

      def install
        bin.install "dicomforge-darwin-amd64" => "dicomforge"
      end
    end

    on_arm do
      url "https://github.com/mrsinham/dicomforge/releases/download/v1.0.3/dicomforge-darwin-arm64"
      sha256 "d830304f37176c5e3654447f22fea3f74c0701d41d840bec7a66b845f213207d"

      def install
        bin.install "dicomforge-darwin-arm64" => "dicomforge"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mrsinham/dicomforge/releases/download/v1.0.3/dicomforge-linux-amd64"
      sha256 "d69a9861035804ea6d1b662e4d611e98723988f21903a153978b76594dcfdd0e"

      def install
        bin.install "dicomforge-linux-amd64" => "dicomforge"
      end
    end

    on_arm do
      url "https://github.com/mrsinham/dicomforge/releases/download/v1.0.3/dicomforge-linux-arm64"
      sha256 "8ece794ecd231a9793fc02b792590eb49c992713e523d6ace887b3f013d91ba4"

      def install
        bin.install "dicomforge-linux-arm64" => "dicomforge"
      end
    end
  end

  test do
    assert_match "dicomforge", shell_output("#{bin}/dicomforge --version")
  end
end
