class Lotar < Formula
  desc "Local-first task and project management CLI"
  homepage "https://github.com/localtaskrepo/lotar"
  version "0.12.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.12.0/lotar-v0.12.0-macos-arm64.tar.gz"
      sha256 "b76531152f0bcd0e78fe54dda82b85429e07fae4d3dd79e43201099781ee727d"
    else
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.12.0/lotar-v0.12.0-macos-x64.tar.gz"
      sha256 "41ab3a198bab1a62f6116a270e443adf032845673aa0eec7d9fcc2dce55d3da1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.12.0/lotar-v0.12.0-linux-musl-arm64.tar.gz"
      sha256 "ed2f0f28ef847213517a22066bc2b823664584cc8f8aed77e6dcc0423c50f067"
    else
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.12.0/lotar-v0.12.0-linux-musl-x64.tar.gz"
      sha256 "54066b42f80e1d3543694b3a6fc07a1ca78cadacaae8128dc741313036ad7bba"
    end
  end

  def install
    bin.install "lotar"
  end

  test do
    assert_match "lotar", shell_output("#{bin}/lotar --version")
  end
end
