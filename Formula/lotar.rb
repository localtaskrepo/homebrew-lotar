class Lotar < Formula
  desc "Local-first task and project management CLI"
  homepage "https://github.com/localtaskrepo/lotar"
  version "0.9.1"
  license "ISC"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.9.1/lotar-v0.9.1-macos-arm64.tar.gz"
      sha256 "edba3962a6404f46ae089ac638e1d84280c93987d14d87781bc6733e32599c0f"
    else
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.9.1/lotar-v0.9.1-macos-x64.tar.gz"
      sha256 "885ce6956754673aa3b9766734f5dfc8f3dbe0a27ae9ea61cf9ca0d4032a2a83"
    end
  end

  def install
    bin.install "lotar"
  end

  test do
    assert_match "lotar", shell_output("#<built-in function bin>/lotar --version")
  end
end
