class Lotar < Formula
  desc "Local-first task and project management CLI"
  homepage "https://github.com/localtaskrepo/lotar"
  version "0.11.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.11.2/lotar-v0.11.2-macos-arm64.tar.gz"
      sha256 "211fd2565f3d656d64cb5f322e0f44a9a463858d557989eed5d4de0ebdd1c4b7"
    else
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.11.2/lotar-v0.11.2-macos-x64.tar.gz"
      sha256 "8284b71857b1269c929ae158098a4a021dce1feadaa1c4c657e803ea16c75bc9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.11.2/lotar-v0.11.2-linux-musl-arm64.tar.gz"
      sha256 "a9ba264bba481beb20c958959619dc2df1169bab94485ebf138419c7478cbbbd"
    else
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.11.2/lotar-v0.11.2-linux-musl-x64.tar.gz"
      sha256 "790dea5e755ba3009582d0a335dff98b334b0153f1de43c2b75931f7a7d13482"
    end
  end

  def install
    bin.install "lotar"
  end

  test do
    assert_match "lotar", shell_output("#{bin}/lotar --version")
  end
end
