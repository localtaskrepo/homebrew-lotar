class Lotar < Formula
  desc "Local-first task and project management CLI"
  homepage "https://github.com/localtaskrepo/lotar"
  version "0.8.0"
  license "ISC"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.8.0/lotar-v0.8.0-macos-arm64.tar.gz"
      sha256 "612b18622715c372890780cee86e66f50d6c5dcffd0a23e5fc3bbdac7355e94e"
    else
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.8.0/lotar-v0.8.0-macos-x64.tar.gz"
      sha256 "a0558e582436ec4373c27deb8e2fa2e52d95e47b6ad1a8af3c4e588fc691bd51"
    end
  end

  def install
    bin.install "lotar"
  end

  test do
    assert_match "lotar", shell_output("#<built-in function bin>/lotar --version")
  end
end
