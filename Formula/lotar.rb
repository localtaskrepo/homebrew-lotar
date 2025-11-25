class Lotar < Formula
  desc "Local-first task and project management CLI"
  homepage "https://github.com/localtaskrepo/lotar"
  version "0.7.1"
  license "ISC"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.7.1/lotar-v0.7.1-macos-arm64.tar.gz"
      sha256 "b56cfb5aba489f77441c65c86407c1ef8ab48b02e4c12696c2fb5c791fefa104"
    else
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.7.1/lotar-v0.7.1-macos-x64.tar.gz"
      sha256 "3d1653190c9da803786bfbfd354e7c97270da78a50ccbf8b4d1fcf289b625101"
    end
  end

  def install
    bin.install "lotar"
  end

  test do
    assert_match "lotar", shell_output("#<built-in function bin>/lotar --version")
  end
end
