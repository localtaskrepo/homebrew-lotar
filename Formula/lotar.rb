class Lotar < Formula
  desc "Local-first task and project management CLI"
  homepage "https://github.com/localtaskrepo/lotar"
  version "0.11.0"
  license "ISC"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.11.0/lotar-v0.11.0-macos-arm64.tar.gz"
      sha256 "2c357202ebb3d40195ee4879d52508c23e2af1a9909074a10a119a0626f299d6"
    else
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.11.0/lotar-v0.11.0-macos-x64.tar.gz"
      sha256 "9fc839b4c978a4d6bd4137e00ea219a682502f25573ff0a9249e9ea656b62dfc"
    end
  end

  def install
    bin.install "lotar"
  end

  test do
    assert_match "lotar", shell_output("#<built-in function bin>/lotar --version")
  end
end
