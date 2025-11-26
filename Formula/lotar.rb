class Lotar < Formula
  desc "Local-first task and project management CLI"
  homepage "https://github.com/localtaskrepo/lotar"
  version "0.7.2"
  license "ISC"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.7.2/lotar-v0.7.2-macos-arm64.tar.gz"
      sha256 "1e9d84bc2c5b42c8949682a0ad72a62c218501e621dab6890e3c8dcc7309ecf8"
    else
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.7.2/lotar-v0.7.2-macos-x64.tar.gz"
      sha256 "dd1f9152520eb2154a8d9a9fa2267cc952cf5d58818fdd6e08fd2530fbfd17e8"
    end
  end

  def install
    bin.install "lotar"
  end

  test do
    assert_match "lotar", shell_output("#<built-in function bin>/lotar --version")
  end
end
