class UfoCli < Formula
  desc "Local rover CLI for UFO"
  homepage "https://getufo.dev"
  version "0.7.3"
  license "BSD-3-Clause"

  on_macos do
    on_arm do
      url "https://github.com/fengsi/ufo/releases/download/v0.7.3/ufo-aarch64-apple-darwin.tar.gz"
      sha256 "d5cc14dc7d55f6aaff31bd009f9a46cc319096ee191e699b40228a3431181c56"
    end
    on_intel do
      url "https://github.com/fengsi/ufo/releases/download/v0.7.3/ufo-x86_64-apple-darwin.tar.gz"
      sha256 "0765b3e9e883ab2d83ea412c1771e6d197032ad36a3b9b09dc320ce5c4319c2b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fengsi/ufo/releases/download/v0.7.3/ufo-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "addc2f36b83d8a0f94a02ce6284d0e7c07d2e320c7f681c536611060f1fe5c99"
    end
    on_intel do
      url "https://github.com/fengsi/ufo/releases/download/v0.7.3/ufo-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fee203bff00a28467dfdb711555461649cbfddff718acc564da35215adf7e1cd"
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
