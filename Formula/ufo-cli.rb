class UfoCli < Formula
  desc "Local rover CLI for UFO"
  homepage "https://getufo.dev"
  version "0.3.0"
  license "BSD-3-Clause"

  on_macos do
    on_arm do
      url "https://github.com/fengsi/ufo/releases/download/v0.3.0/ufo-aarch64-apple-darwin.tar.gz"
      sha256 "8caf0c9ded73afd160fbb8842f5553789e87a7b026bd9cada2ff912632460ec5"
    end
    on_intel do
      url "https://github.com/fengsi/ufo/releases/download/v0.3.0/ufo-x86_64-apple-darwin.tar.gz"
      sha256 "2affdb8fc242f6471bd2dc509b083643800fe4814e94eadcc4a048a4624de01b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fengsi/ufo/releases/download/v0.3.0/ufo-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7b18bee2927e5b52e0d20d430d62e9c2e06772dae86cbc169a340b54ae2b4fbc"
    end
    on_intel do
      url "https://github.com/fengsi/ufo/releases/download/v0.3.0/ufo-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ccff001bad0d74f211dacf76833bce1fb7a662076c071476bf18750c862095bb"
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
