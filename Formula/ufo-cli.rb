class UfoCli < Formula
  desc "Local rover CLI for UFO"
  homepage "https://getufo.dev"
  version "0.7.0"
  license "BSD-3-Clause"

  on_macos do
    on_arm do
      url "https://github.com/fengsi/ufo/releases/download/v0.7.0/ufo-aarch64-apple-darwin.tar.gz"
      sha256 "154356813faa044882ccb0a4103b5bf6223e126f0d2f535b2792caef6e8ac3f4"
    end
    on_intel do
      url "https://github.com/fengsi/ufo/releases/download/v0.7.0/ufo-x86_64-apple-darwin.tar.gz"
      sha256 "8c988cd6492f2596fedef8dbc6ac98c2f486431ac9d382e72d9e131aaecf5b61"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fengsi/ufo/releases/download/v0.7.0/ufo-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "eff77543972fd2058e712b4529b6e217fece2d22c49209ef29c47342182ca84d"
    end
    on_intel do
      url "https://github.com/fengsi/ufo/releases/download/v0.7.0/ufo-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ef9caa522d4d1a4e9a4cfbafb59ef0137289051e75db97ae0c6ba7b89a9b2852"
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
