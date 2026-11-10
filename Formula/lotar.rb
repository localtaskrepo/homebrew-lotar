class Lotar < Formula
  desc "Local-first task and project management CLI"
  homepage "https://github.com/localtaskrepo/lotar"
  version "0.12.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.12.2/lotar-v0.12.2-macos-arm64.tar.gz"
      sha256 "7b17385a6732c81c7c5c0b4e655bb7f0f52ec487aa5fc99d7003a3b226a7485b"
    else
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.12.2/lotar-v0.12.2-macos-x64.tar.gz"
      sha256 "9560a34b0ef6a1895d9814243b18a28d79c97290f0a315617bb3d12384727794"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.12.2/lotar-v0.12.2-linux-musl-arm64.tar.gz"
      sha256 "73e1041806aa21c3992dd6ea5bf3c10389e5cb5caa143e8843d394a74a8f4f4e"
    else
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.12.2/lotar-v0.12.2-linux-musl-x64.tar.gz"
      sha256 "94ac98e480c522bdb01ce4c2b36a182151d846c8d7c62a5d17e6ccfdef1461e4"
    end
  end

  def install
    bin.install "lotar"
  end

  test do
    assert_match "lotar", shell_output("#{bin}/lotar --version")
  end
end
