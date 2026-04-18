class Lotar < Formula
  desc "Local-first task and project management CLI"
  homepage "https://github.com/localtaskrepo/lotar"
  version "0.7.6"
  license "ISC"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.7.6/lotar-v0.7.6-macos-arm64.tar.gz"
      sha256 "9872d369097ef1a55eb7228cd8a8d05318b9b452320b1f8f9bb2b0b5d81db860"
    else
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.7.6/lotar-v0.7.6-macos-x64.tar.gz"
      sha256 "c39885d65d398177abe81b430b7eb12e2d21846381370118c76e6235e476ced1"
    end
  end

  def install
    bin.install "lotar"
  end

  test do
    assert_match "lotar", shell_output("#<built-in function bin>/lotar --version")
  end
end
