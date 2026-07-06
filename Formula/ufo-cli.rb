class UfoCli < Formula
  desc "Local rover CLI for UFO"
  homepage "https://getufo.dev"
  version "0.6.1"
  license "BSD-3-Clause"

  on_macos do
    on_arm do
      url "https://github.com/fengsi/ufo/releases/download/v0.6.1/ufo-aarch64-apple-darwin.tar.gz"
      sha256 "842e9b17cd6342601de77795d85a231e77cd699fb973c3f302590c566ba222ec"
    end
    on_intel do
      url "https://github.com/fengsi/ufo/releases/download/v0.6.1/ufo-x86_64-apple-darwin.tar.gz"
      sha256 "95e220c9212963cc940bd5d642abb5ed5072889fc8399ddff19525f769072145"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fengsi/ufo/releases/download/v0.6.1/ufo-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f404895d451590e9335bca9961d736eaa1eb3b2dc8baa78b199e6b0540774a3a"
    end
    on_intel do
      url "https://github.com/fengsi/ufo/releases/download/v0.6.1/ufo-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3fc14f6c094dd1f1d603705b6ca3ef7e16ff0bd16eb14af53acb744c00b816d2"
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
