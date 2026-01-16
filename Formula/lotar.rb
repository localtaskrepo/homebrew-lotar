class Lotar < Formula
  desc "Local-first task and project management CLI"
  homepage "https://github.com/localtaskrepo/lotar"
  version "0.7.4"
  license "ISC"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.7.4/lotar-v0.7.4-macos-arm64.tar.gz"
      sha256 "7cee5edf1581f921304663ae81be308e4fd006e2b04a0444a1f9db9fe232afde"
    else
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.7.4/lotar-v0.7.4-macos-x64.tar.gz"
      sha256 "2ba860673a9fc1dc667517d631c5ebc535b95d904d0c84550412f913b4a6c03e"
    end
  end

  def install
    bin.install "lotar"
  end

  test do
    assert_match "lotar", shell_output("#<built-in function bin>/lotar --version")
  end
end
