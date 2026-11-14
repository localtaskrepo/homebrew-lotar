class Lotar < Formula
  desc "Local-first task and project management CLI"
  homepage "https://github.com/localtaskrepo/lotar"
  version "0.15.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.15.0/lotar-v0.15.0-macos-arm64.tar.gz"
      sha256 "03b6445b04e6a12e288ab1dd97bacd17b29c091b5d0a9027a278992d54c2ca6e"
    else
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.15.0/lotar-v0.15.0-macos-x64.tar.gz"
      sha256 "eaabf1c0eda715bf50fa6b9f3d116e1215e03e79469d860f4cebcf33669970e3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.15.0/lotar-v0.15.0-linux-musl-arm64.tar.gz"
      sha256 "2b2838fd6d42d891fd1e68218a7aa4cca8d85694bd1f5ddd3ecb82ed171d7a60"
    else
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.15.0/lotar-v0.15.0-linux-musl-x64.tar.gz"
      sha256 "1aae910c691fa39fbacc575c0af821abbcd52be7dfcb14484db9b71d60de5767"
    end
  end

  def install
    bin.install "lotar"
  end

  test do
    assert_match "lotar", shell_output("#{bin}/lotar --version")
  end
end
