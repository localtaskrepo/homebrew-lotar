class Lotar < Formula
  desc "Local-first task and project management CLI"
  homepage "https://github.com/localtaskrepo/lotar"
  version "0.7.0"
  license "ISC"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.7.0/lotar-v0.7.0-macos-arm64.tar.gz"
      sha256 "97192ec7e16359c95dcc70fae6f75f6a460a7d14d289878e4736ddd2fe380f89"
    else
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.7.0/lotar-v0.7.0-macos-x64.tar.gz"
      sha256 "405aac8649f460cecae07c5f78b65e9cd5d93e624cdf81e049551958496469df"
    end
  end

  def install
    bin.install "lotar"
  end

  test do
    assert_match "lotar", shell_output("#<built-in function bin>/lotar --version")
  end
end
