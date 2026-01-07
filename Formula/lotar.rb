class Lotar < Formula
  desc "Local-first task and project management CLI"
  homepage "https://github.com/localtaskrepo/lotar"
  version "0.7.3"
  license "ISC"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.7.3/lotar-v0.7.3-macos-arm64.tar.gz"
      sha256 "8909a15ffe9b4dc09c8d3fe4a2c7757e151b17fc0d04ddb14c2b75d02ad438e8"
    else
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.7.3/lotar-v0.7.3-macos-x64.tar.gz"
      sha256 "127d7259d6c724ee4a0af72bd877d3ecd0f778187bd1c6aaecd9f6e22d1ff989"
    end
  end

  def install
    bin.install "lotar"
  end

  test do
    assert_match "lotar", shell_output("#<built-in function bin>/lotar --version")
  end
end
