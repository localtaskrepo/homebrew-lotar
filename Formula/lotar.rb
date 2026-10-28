class Lotar < Formula
  desc "Local-first task and project management CLI"
  homepage "https://github.com/localtaskrepo/lotar"
  version "0.10.0"
  license "ISC"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.10.0/lotar-v0.10.0-macos-arm64.tar.gz"
      sha256 "9a34396975e224cefbcbf6d54563767752ca180973abbf4474c092a62f30615f"
    else
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.10.0/lotar-v0.10.0-macos-x64.tar.gz"
      sha256 "28825991ea821d00d9f11cf022da7d711db6a51823af38a4c43f6be013c93efd"
    end
  end

  def install
    bin.install "lotar"
  end

  test do
    assert_match "lotar", shell_output("#<built-in function bin>/lotar --version")
  end
end
