class Lotar < Formula
  desc "Local-first task and project management CLI"
  homepage "https://github.com/localtaskrepo/lotar"
  version "0.15.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.15.1/lotar-v0.15.1-macos-arm64.tar.gz"
      sha256 "4ba9cfa0c580d32c1e495460c33772dd0fd2f5af1bc8586873563ac65c35ef92"
    else
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.15.1/lotar-v0.15.1-macos-x64.tar.gz"
      sha256 "f3ced563044a5ea2c88ecc39026e1db53d982ba4d71849a19a71bd750b230159"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.15.1/lotar-v0.15.1-linux-musl-arm64.tar.gz"
      sha256 "df3608b217094aecad93fd77b8dab0e43c7a6080a5fe06bf712a7074b62089ed"
    else
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.15.1/lotar-v0.15.1-linux-musl-x64.tar.gz"
      sha256 "42519cb2bda6d56df95c503d64edd015e5a6a85df3916ef11d0c7807d479a7db"
    end
  end

  def install
    bin.install "lotar"
  end

  test do
    assert_match "lotar", shell_output("#{bin}/lotar --version")
  end
end
