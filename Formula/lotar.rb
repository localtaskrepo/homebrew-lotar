class Lotar < Formula
  desc "Local-first task and project management CLI"
  homepage "https://github.com/localtaskrepo/lotar"
  version "0.15.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.15.3/lotar-v0.15.3-macos-arm64.tar.gz"
      sha256 "14cb3c3097325087a7fdefa4be8dd2ff25c967f1c08fccbb28d2c3286a1a7a4c"
    else
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.15.3/lotar-v0.15.3-macos-x64.tar.gz"
      sha256 "3aff17960bc26933c239f82338bd083e5b1b9840d90a426047d85553f83ecb06"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.15.3/lotar-v0.15.3-linux-musl-arm64.tar.gz"
      sha256 "cc603ff98ed3042a8c8528e22cf002cd15e2713d2b0362aed986f81ec425f254"
    else
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.15.3/lotar-v0.15.3-linux-musl-x64.tar.gz"
      sha256 "d24c704085ce61a383e315cd135d8a120cacd4ab6a49dac781b8096b74efb0bc"
    end
  end

  def install
    bin.install "lotar"
  end

  test do
    assert_match "lotar", shell_output("#{bin}/lotar --version")
  end
end
