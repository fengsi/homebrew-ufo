class UfoCli < Formula
  desc "Local rover CLI for UFO"
  homepage "https://getufo.dev"
  version "0.3.1"
  license "BSD-3-Clause"

  on_macos do
    on_arm do
      url "https://github.com/fengsi/ufo/releases/download/v0.3.1/ufo-aarch64-apple-darwin.tar.gz"
      sha256 "099ebcd67d3d5dacece8f2ebd7ae3c189efedf9df7f2633883a144a1edf6fa2e"
    end
    on_intel do
      url "https://github.com/fengsi/ufo/releases/download/v0.3.1/ufo-x86_64-apple-darwin.tar.gz"
      sha256 "6deb8b83f07b62a97fa8010067b1170fe50f0d12b38495ebc71d9721d2ae01ec"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fengsi/ufo/releases/download/v0.3.1/ufo-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e11b64327ad81418c8e271d9176c5db5e975bc9a6ed8f5471387b18b868f7731"
    end
    on_intel do
      url "https://github.com/fengsi/ufo/releases/download/v0.3.1/ufo-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1b02cd67a0eb9e46a35b0d1e84b88715e50865a52e02912b634c9aa09deadac8"
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
