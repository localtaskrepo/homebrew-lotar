class Lotar < Formula
  desc "Local-first task and project management CLI"
  homepage "https://github.com/localtaskrepo/lotar"
  version "0.14.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.14.3/lotar-v0.14.3-macos-arm64.tar.gz"
      sha256 "9d5f66d6da034f492f36be90fda00bab80002f8b4a19b5b7091de7536d13d1be"
    else
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.14.3/lotar-v0.14.3-macos-x64.tar.gz"
      sha256 "7a8e8d2caa54e498371bf1e384dda84e4853117da85fd203b6f4a60b6d0cb623"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.14.3/lotar-v0.14.3-linux-musl-arm64.tar.gz"
      sha256 "6881734a7cfaf3643a9221dec111d9536d246666199748c948fe95b3d3b9997f"
    else
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.14.3/lotar-v0.14.3-linux-musl-x64.tar.gz"
      sha256 "3a375b66a0b7d060613f9192c9ea7b2a39a9f05280e12bf8e82f51e810930f96"
    end
  end

  def install
    bin.install "lotar"
  end

  test do
    assert_match "lotar", shell_output("#{bin}/lotar --version")
  end
end
