class Autospec < Formula
  desc "Converge markdown specs with local AI coding agent CLIs"
  homepage "https://github.com/localtaskrepo/autospec"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/localtaskrepo/autospec/releases/download/v0.1.0/autospec-v0.1.0-macos-arm64.tar.gz"
      sha256 "6640ad006f9122cb91b05ee83a727f194a3514f260d3d2568b121b8dfa73d13a"
    else
      url "https://github.com/localtaskrepo/autospec/releases/download/v0.1.0/autospec-v0.1.0-macos-x64.tar.gz"
      sha256 "ac04037f433c268a2a93cc82f4bf7e1451498e22a7a1e05f30137c6f599fac85"
    end
  end

  def install
    bin.install "autospec"
  end

  test do
    assert_match "autospec", shell_output("#{bin}/autospec --version")
  end
end
