class UfoCli < Formula
  desc "Local rover CLI for UFO"
  homepage "https://getufo.dev"
  version "0.5.0"
  license "BSD-3-Clause"

  on_macos do
    on_arm do
      url "https://github.com/fengsi/ufo/releases/download/v0.5.0/ufo-aarch64-apple-darwin.tar.gz"
      sha256 "94c15bec71741439b46f1a5012afaa6b87f8073a159faade189654aaa8cf167b"
    end
    on_intel do
      url "https://github.com/fengsi/ufo/releases/download/v0.5.0/ufo-x86_64-apple-darwin.tar.gz"
      sha256 "e949894be6c93aa3f85fe4d10028b3b3f4713a6e9b7d36416fd76b3f3b04e1df"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fengsi/ufo/releases/download/v0.5.0/ufo-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b1bf3ca79af340dc62b179c309ca5f24967a4a7c6f12a17b52c615b1c416a8e1"
    end
    on_intel do
      url "https://github.com/fengsi/ufo/releases/download/v0.5.0/ufo-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "822f8993d7f8af93fdf889b23eba4c653ba5dbfeee35076b4a7006bfc553dde8"
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
