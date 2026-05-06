# Formula for homebrew-tools tap: steve-krisjanovs/homebrew-tools
# Auto-updated by CI on each release tag push.
# To install:
#   brew tap steve-krisjanovs/tools
#   brew install toneai-nux

class ToneaiNux < Formula
  desc "Setup wizard for ToneAI-NUX — AI-powered NUX MightyAmp tone assistant"
  homepage "https://github.com/steve-krisjanovs/toneai-nux"
  version "1.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/steve-krisjanovs/toneai-nux/releases/download/v1.4.0/toneai-nux-mac-arm64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/steve-krisjanovs/toneai-nux/releases/download/v1.4.0/toneai-nux-mac-x64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install Dir["toneai-nux-mac-*"].first => "toneai-nux"
  end

  test do
    assert_match "ToneAI", shell_output("#{bin}/toneai-nux --help 2>&1 || true")
  end
end
