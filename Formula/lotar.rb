class Lotar < Formula
  desc "Local-first task and project management CLI"
  homepage "https://github.com/localtaskrepo/lotar"
  version "0.14.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.14.0/lotar-v0.14.0-macos-arm64.tar.gz"
      sha256 "aeb15c97cef062d940f5172b4abd6b7b67844354c7cc520ddb80579025c6a63b"
    else
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.14.0/lotar-v0.14.0-macos-x64.tar.gz"
      sha256 "bf48810568ee04de884d57a3b0351f40e8a315f691e6228f0e25064db7311b6f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.14.0/lotar-v0.14.0-linux-musl-arm64.tar.gz"
      sha256 "e45a40bb520c94e4fd85055cf8f055a8a640fa3dcc6b12ff32a8d1cda268dd01"
    else
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.14.0/lotar-v0.14.0-linux-musl-x64.tar.gz"
      sha256 "9126ff403f1e8efa8c1f7ea590751692ffc5e4b4821304d19b411a15e9905d9c"
    end
  end

  def install
    bin.install "lotar"
  end

  test do
    assert_match "lotar", shell_output("#{bin}/lotar --version")
  end
end
