class Lotar < Formula
  desc "Local-first task and project management CLI"
  homepage "https://github.com/localtaskrepo/lotar"
  version "0.6.3"
  license "ISC"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.6.3/lotar-v0.6.3-macos-arm64.tar.gz"
      sha256 "43a0b8da9e9a1baa3a2cde50b4b9f5ce9b219b77b28125c4468325440cd1ea15"
    else
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.6.3/lotar-v0.6.3-macos-x64.tar.gz"
      sha256 "acfc5c6f85fe4bd999e5c271a6b4513003ad2d85ac691313df94a6207db31b1d"
    end
  end

  def install
    bin.install "lotar"
  end

  test do
    assert_match "lotar", shell_output("#<built-in function bin>/lotar --version")
  end
end
