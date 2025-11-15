class Lotar < Formula
  desc "Local-first task and project management CLI"
  homepage "https://github.com/localtaskrepo/lotar"
  version "0.6.0"
  license "ISC"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.6.0/lotar-v0.6.0-macos-arm64.tar.gz"
      sha256 "418de2a0a76f9bdd7068226bebabb462f36aa5257b5de27bdf5cb8f4a9ca860a"
    else
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.6.0/lotar-v0.6.0-macos-x64.tar.gz"
      sha256 "019786e6a59254aafa695afed25e711f447a520f24574afdb86b99262fb6348d"
    end
  end

  def install
    bin.install "lotar"
  end

  test do
    assert_match "lotar", shell_output("#{bin}/lotar --version")
  end
end
