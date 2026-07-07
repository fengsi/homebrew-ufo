class UfoCli < Formula
  desc "Local rover CLI for UFO"
  homepage "https://getufo.dev"
  version "0.6.2"
  license "BSD-3-Clause"

  on_macos do
    on_arm do
      url "https://github.com/fengsi/ufo/releases/download/v0.6.2/ufo-aarch64-apple-darwin.tar.gz"
      sha256 "3036614117abee515fdea91bab07468a3a888ac6abbb9315475801151d1fd8f4"
    end
    on_intel do
      url "https://github.com/fengsi/ufo/releases/download/v0.6.2/ufo-x86_64-apple-darwin.tar.gz"
      sha256 "85e1e88202ae8637ff4680bc78350e6f6557eba38b87930b1b9b0a8c302dd5cb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fengsi/ufo/releases/download/v0.6.2/ufo-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ab025618efb7dde5b78b012d3d751e5292b6c634c4ae2c674a7feaa24bfb5855"
    end
    on_intel do
      url "https://github.com/fengsi/ufo/releases/download/v0.6.2/ufo-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "43ba09d33b7e3c70501eec8eb9d213a334763a27ca6a4987d7a0f7ea338cd967"
    end
  end

  def install
    bin.install "ufo"
  end

  test do
    assert_match "UFO local rover", shell_output("#{bin}/ufo --help")
    assert_match "Rover controls", shell_output("#{bin}/ufo rover --help")
  end
end
