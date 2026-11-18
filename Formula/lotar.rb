class Lotar < Formula
  desc "Local-first task and project management CLI"
  homepage "https://github.com/localtaskrepo/lotar"
  version "0.15.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.15.4/lotar-v0.15.4-macos-arm64.tar.gz"
      sha256 "f05243379f4bd429c6f89dcbd36a64b2ccd352fc809745a053559b3df21d2948"
    else
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.15.4/lotar-v0.15.4-macos-x64.tar.gz"
      sha256 "35d2bb8e384978d30084a5efbfeebb2b871c3f4773a6d8111341cc44b4186313"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.15.4/lotar-v0.15.4-linux-musl-arm64.tar.gz"
      sha256 "26095de808eb6b2fd318e277584e6b4d014dea54fec43b800d08e2ab1fdacf18"
    else
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.15.4/lotar-v0.15.4-linux-musl-x64.tar.gz"
      sha256 "2c6a725ed7ee666e6e721ae6b38cf8bd41393e93320fac5197d0b7eb4e14452a"
    end
  end

  def install
    bin.install "lotar"
  end

  test do
    assert_match "lotar", shell_output("#{bin}/lotar --version")
  end
end
