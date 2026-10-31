class Lotar < Formula
  desc "Local-first task and project management CLI"
  homepage "https://github.com/localtaskrepo/lotar"
  version "0.11.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.11.1/lotar-v0.11.1-macos-arm64.tar.gz"
      sha256 "3228c1b32bc8fb42a11dd6b2f7a9439babb419a8ae2c18594dc656d28432b82f"
    else
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.11.1/lotar-v0.11.1-macos-x64.tar.gz"
      sha256 "add0cc7f0ae88a39a42c925fc29fc9b5b35aaa334d034502c938975f60c32e15"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.11.1/lotar-v0.11.1-linux-musl-arm64.tar.gz"
      sha256 "8f0f2df6b6bdf9194f3851cd01c23f3b5ce591e9649f947823814e5a285edbbb"
    else
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.11.1/lotar-v0.11.1-linux-musl-x64.tar.gz"
      sha256 "6f176b9c19859a079c73d9c7acfc056f59778b0b4c3edcbe6ce3c8e3b788a1fb"
    end
  end

  def install
    bin.install "lotar"
  end

  test do
    assert_match "lotar", shell_output("#{bin}/lotar --version")
  end
end
