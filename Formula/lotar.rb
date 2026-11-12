class Lotar < Formula
  desc "Local-first task and project management CLI"
  homepage "https://github.com/localtaskrepo/lotar"
  version "0.13.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.13.2/lotar-v0.13.2-macos-arm64.tar.gz"
      sha256 "720c7d6c21d016c56a7476693371cc5ec3b5c1bf617bb62bc484d3622ec6255c"
    else
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.13.2/lotar-v0.13.2-macos-x64.tar.gz"
      sha256 "2d68079bb67ee1a884b28e11d41a86286be8f1fff56914e5c7edeb2b83e91f91"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.13.2/lotar-v0.13.2-linux-musl-arm64.tar.gz"
      sha256 "5749ec03e6f0b4647ce0e8983eed09ebd241f29098e6d0cf93b2722eb62eea46"
    else
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.13.2/lotar-v0.13.2-linux-musl-x64.tar.gz"
      sha256 "30a1f01697e8a0cf1f8d96ef80f7b884c2b0f2640f1ccd7a7b87c5c920188947"
    end
  end

  def install
    bin.install "lotar"
  end

  test do
    assert_match "lotar", shell_output("#{bin}/lotar --version")
  end
end
