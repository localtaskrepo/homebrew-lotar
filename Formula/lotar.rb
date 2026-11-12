class Lotar < Formula
  desc "Local-first task and project management CLI"
  homepage "https://github.com/localtaskrepo/lotar"
  version "0.13.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.13.3/lotar-v0.13.3-macos-arm64.tar.gz"
      sha256 "d4c27fac6e34960ac8656d103355dba814d0017be7dd3c23f4d7d597454b389b"
    else
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.13.3/lotar-v0.13.3-macos-x64.tar.gz"
      sha256 "91574e731fc266992ed46085ce47d74abc4d42cb3d344f049b2d047e6535e644"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.13.3/lotar-v0.13.3-linux-musl-arm64.tar.gz"
      sha256 "d6f6c3f71ece116a7c76f661bf53c79e40507d76e1a33b7a2b8ac0216cb7af7a"
    else
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.13.3/lotar-v0.13.3-linux-musl-x64.tar.gz"
      sha256 "73a005ec366a4b06930ae9a30e00aff98def2d5e5813f24e867f758f0038b435"
    end
  end

  def install
    bin.install "lotar"
  end

  test do
    assert_match "lotar", shell_output("#{bin}/lotar --version")
  end
end
