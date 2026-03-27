class Lotar < Formula
  desc "Local-first task and project management CLI"
  homepage "https://github.com/localtaskrepo/lotar"
  version "0.7.5"
  license "ISC"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.7.5/lotar-v0.7.5-macos-arm64.tar.gz"
      sha256 "4df85cf4d42c96b91af71ea724c54f1bea49f772aaa393daae90d0a5c056be46"
    else
      url "https://github.com/localtaskrepo/lotar/releases/download/v0.7.5/lotar-v0.7.5-macos-x64.tar.gz"
      sha256 "7255a1cf1e6f16fcdf4a5fc8515c00051c45dd13d3f28de23ee109edc2334ad5"
    end
  end

  def install
    bin.install "lotar"
  end

  test do
    assert_match "lotar", shell_output("#<built-in function bin>/lotar --version")
  end
end
