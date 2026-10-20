class Lotar < Formula
  desc "Local-first task and project management CLI"
  homepage "https://github.com/localtaskrepo/lotar"
  version "0.9.0"
  license "ISC"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.9.0/lotar-v0.9.0-macos-arm64.tar.gz"
      sha256 "011959c1f73e9b84622468b943fd28b9919bb3a8811cf4685b668310bbb2a65b"
    else
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.9.0/lotar-v0.9.0-macos-x64.tar.gz"
      sha256 "b043529688f89844856780274873884edd798a57fc5ebac5154dc6cb569098b1"
    end
  end

  def install
    bin.install "lotar"
  end

  test do
    assert_match "lotar", shell_output("#<built-in function bin>/lotar --version")
  end
end
