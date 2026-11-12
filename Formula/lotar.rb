class Lotar < Formula
  desc "Local-first task and project management CLI"
  homepage "https://github.com/localtaskrepo/lotar"
  version "0.14.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.14.1/lotar-v0.14.1-macos-arm64.tar.gz"
      sha256 "9d40d396d8949af5b708e3663989709122f26cf107fc065820a4009e7c19c1b9"
    else
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.14.1/lotar-v0.14.1-macos-x64.tar.gz"
      sha256 "7042d74f560724b4efc5d38a9ea3aa63008977ba6e3f9474d7dbbf22f900ace7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.14.1/lotar-v0.14.1-linux-musl-arm64.tar.gz"
      sha256 "d456007cbb1f5bff3c8fbf58da94b1c6d9a6181fdc2e01e6517190955361aecf"
    else
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.14.1/lotar-v0.14.1-linux-musl-x64.tar.gz"
      sha256 "12314b8188fead2b0e331da9eeaaca0c9f8f8382484d522f3c990690bff18f47"
    end
  end

  def install
    bin.install "lotar"
  end

  test do
    assert_match "lotar", shell_output("#{bin}/lotar --version")
  end
end
