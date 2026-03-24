class Autospec < Formula
  desc "Converge markdown specs with local AI coding agent CLIs"
  homepage "https://github.com/localtaskrepo/autospec"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/localtaskrepo/autospec/releases/download/v0.2.0/autospec-v0.2.0-macos-arm64.tar.gz"
      sha256 "ab6dcaa8443e7f94585f49feff19e949dd8a6cdf626cd715c5c44317442b9955"
    else
      url "https://github.com/localtaskrepo/autospec/releases/download/v0.2.0/autospec-v0.2.0-macos-x64.tar.gz"
      sha256 "bd42d9105e415a4f3bfd99ea2cb6723e5dda8f7d572bafa687d25e65a857eeb4"
    end
  end

  def install
    bin.install "autospec"
  end

  test do
    assert_match "autospec", shell_output("#{bin}/autospec --version")
  end
end
