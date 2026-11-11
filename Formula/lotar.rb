class Lotar < Formula
  desc "Local-first task and project management CLI"
  homepage "https://github.com/localtaskrepo/lotar"
  version "0.13.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.13.0/lotar-v0.13.0-macos-arm64.tar.gz"
      sha256 "7c0e33f6e123fd0d6d07ca2bc7aae77985270a6e7054d602c92148ed74fe1173"
    else
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.13.0/lotar-v0.13.0-macos-x64.tar.gz"
      sha256 "c09869920729633ef8e71fd2ce544b5044a2f9fe21f43a8529a577c766bb7a30"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.13.0/lotar-v0.13.0-linux-musl-arm64.tar.gz"
      sha256 "1035a96830a39714b888a4786de90095df66faf4545db8acebce1f847ab063d9"
    else
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.13.0/lotar-v0.13.0-linux-musl-x64.tar.gz"
      sha256 "01dbcc051175fb002eebf63032dcef38439dda8f0fca291c0d377d110d3cde93"
    end
  end

  def install
    bin.install "lotar"
  end

  test do
    assert_match "lotar", shell_output("#{bin}/lotar --version")
  end
end
