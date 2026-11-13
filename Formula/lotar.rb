class Lotar < Formula
  desc "Local-first task and project management CLI"
  homepage "https://github.com/localtaskrepo/lotar"
  version "0.14.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.14.2/lotar-v0.14.2-macos-arm64.tar.gz"
      sha256 "6dba990c48078c5cd3a3b2df7ddd5df6aaccbcf9ab53d145e8f422fef99d1284"
    else
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.14.2/lotar-v0.14.2-macos-x64.tar.gz"
      sha256 "6b44993043f6da57118ecd6fb1b1e3d71dc71572d1cf8115fae63c459a17324d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.14.2/lotar-v0.14.2-linux-musl-arm64.tar.gz"
      sha256 "67b6679abcc58d842fd6ce9204706b378d231b2f6764e0b8edf8635183f0afde"
    else
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.14.2/lotar-v0.14.2-linux-musl-x64.tar.gz"
      sha256 "cb52dd38058b163ceb0cb81b7dbb44461fe0d97e95fcf94d1dfa0c4eb7c7f144"
    end
  end

  def install
    bin.install "lotar"
  end

  test do
    assert_match "lotar", shell_output("#{bin}/lotar --version")
  end
end
