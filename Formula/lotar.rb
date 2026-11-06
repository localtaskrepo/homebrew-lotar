class Lotar < Formula
  desc "Local-first task and project management CLI"
  homepage "https://github.com/localtaskrepo/lotar"
  version "0.12.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.12.1/lotar-v0.12.1-macos-arm64.tar.gz"
      sha256 "8d955e548f5609b248e601184484f901d867345d13f2bcbffab1873068ec6223"
    else
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.12.1/lotar-v0.12.1-macos-x64.tar.gz"
      sha256 "267755c148929c3c32a41a00e2026e43c3db17adf39f3acc26806bfade0dabc2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.12.1/lotar-v0.12.1-linux-musl-arm64.tar.gz"
      sha256 "ae631f21a6fc9bf4bd23850c13de8116ab0eb8bc1ecac5aef2312f5675994dd7"
    else
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.12.1/lotar-v0.12.1-linux-musl-x64.tar.gz"
      sha256 "2e40cc9aad6b1faa10b8d7d16535cd31f674b41f30ac56435127b9dd4088e626"
    end
  end

  def install
    bin.install "lotar"
  end

  test do
    assert_match "lotar", shell_output("#{bin}/lotar --version")
  end
end
