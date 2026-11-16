class Lotar < Formula
  desc "Local-first task and project management CLI"
  homepage "https://github.com/localtaskrepo/lotar"
  version "0.15.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.15.2/lotar-v0.15.2-macos-arm64.tar.gz"
      sha256 "959497176548c195c8143864d01c271fe65b12ddd681016e41c0c0c1dbdfca76"
    else
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.15.2/lotar-v0.15.2-macos-x64.tar.gz"
      sha256 "b1c9dd505379560d603f3034015852506852c0ed0f3269f9d6170ef162c7b8d4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.15.2/lotar-v0.15.2-linux-musl-arm64.tar.gz"
      sha256 "952d7bbd118160ff35cc7d418d95a5bde7f580320924337815c7bee468db7e9b"
    else
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.15.2/lotar-v0.15.2-linux-musl-x64.tar.gz"
      sha256 "18001782a161f7a1267460b00297ca427218d63657185b1068846f0ea78fc422"
    end
  end

  def install
    bin.install "lotar"
  end

  test do
    assert_match "lotar", shell_output("#{bin}/lotar --version")
  end
end
