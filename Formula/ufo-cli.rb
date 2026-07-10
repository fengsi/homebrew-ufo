class UfoCli < Formula
  desc "Local rover CLI for UFO"
  homepage "https://getufo.dev"
  version "0.7.1"
  license "BSD-3-Clause"

  on_macos do
    on_arm do
      url "https://github.com/fengsi/ufo/releases/download/v0.7.1/ufo-aarch64-apple-darwin.tar.gz"
      sha256 "e2e8f6c213506e175a73c2c5e09b6e9583e4727f04c4a67d59663da27e43fc72"
    end
    on_intel do
      url "https://github.com/fengsi/ufo/releases/download/v0.7.1/ufo-x86_64-apple-darwin.tar.gz"
      sha256 "6c4bd3dd217f3a4518699d0f028f983e8dfa28c90339ba83b8bd67e9a296f06e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fengsi/ufo/releases/download/v0.7.1/ufo-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d10ac7c540d073d18f9e6aefdd9d0f6e137f906d96d2d0a2f13f57505e04c1cc"
    end
    on_intel do
      url "https://github.com/fengsi/ufo/releases/download/v0.7.1/ufo-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4faa89b8e22f21d8bbf2d3e91a641ce2c514340412d6a7722e81de291fec721e"
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
