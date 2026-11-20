class Lotar < Formula
  desc "Local-first task and project management CLI"
  homepage "https://github.com/localtaskrepo/lotar"
  version "0.15.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.15.5/lotar-v0.15.5-macos-arm64.tar.gz"
      sha256 "7236070d9e79f13bc6e9de7b60d589a18a30212e36beddc7ae22d4d6404069ab"
    else
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.15.5/lotar-v0.15.5-macos-x64.tar.gz"
      sha256 "cad6c733f470b90c2587546f16f5369fa8447dddf311199c542dea339fc5e6c8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.15.5/lotar-v0.15.5-linux-musl-arm64.tar.gz"
      sha256 "6e77cd334fe6a7eb901ffebc0e7a2f84f6a2716e52c82f87bee2a9086da2afb7"
    else
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.15.5/lotar-v0.15.5-linux-musl-x64.tar.gz"
      sha256 "f85080c46826d9f8123633e3e14abf8e5f08dded69e5fcc8ad7226265c102784"
    end
  end

  def install
    bin.install "lotar"
  end

  test do
    assert_match "lotar", shell_output("#{bin}/lotar --version")
  end
end
