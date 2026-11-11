class Lotar < Formula
  desc "Local-first task and project management CLI"
  homepage "https://github.com/localtaskrepo/lotar"
  version "0.13.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.13.1/lotar-v0.13.1-macos-arm64.tar.gz"
      sha256 "9d5b6a9052bd02df96de637a4f22ff6c725f5fd85ca976c8bf7130b9d742dd14"
    else
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.13.1/lotar-v0.13.1-macos-x64.tar.gz"
      sha256 "e273035063aa42b100d15be5855a77f6314a2a76efc00e6b8179e62eea116fef"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.13.1/lotar-v0.13.1-linux-musl-arm64.tar.gz"
      sha256 "fab2db8eff9a872189b19b9faf378ed901a89657d145efd3522e3cfb2a24e55d"
    else
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.13.1/lotar-v0.13.1-linux-musl-x64.tar.gz"
      sha256 "b2aca86e62fa8593fce9011eff8e54ed6a4c21a2fd1f4f7aa49914192d8399cb"
    end
  end

  def install
    bin.install "lotar"
  end

  test do
    assert_match "lotar", shell_output("#{bin}/lotar --version")
  end
end
