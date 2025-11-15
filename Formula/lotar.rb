class Lotar < Formula
  desc "Local-first task and project management CLI"
  homepage "https://github.com/localtaskrepo/lotar"
  version "0.6.1"
  license "ISC"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.6.1/lotar-v0.6.1-macos-arm64.tar.gz"
      sha256 "c3e2fe15309b51979ce1733d82d6b2fbc9f47c84ee160bc9935b059731f36bcc"
    else
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.6.1/lotar-v0.6.1-macos-x64.tar.gz"
      sha256 "5811274bafb3d29b05cede4289a1461dd58349582ad7ed205e76e4148507bf37"
    end
  end

  def install
    bin.install "lotar"
  end

  test do
    assert_match "lotar", shell_output("#<built-in function bin>/lotar --version")
  end
end
