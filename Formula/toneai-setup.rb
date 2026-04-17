# Formula for homebrew-tools tap: steve-krisjanovs/homebrew-tools
# Auto-updated by CI on each setup-release tag push.
# To install:
#   brew tap steve-krisjanovs/tools
#   brew install toneai-setup

class ToneaiSetup < Formula
  desc "Setup wizard for ToneAI — AI-powered NUX MightyAmp tone assistant"
  homepage "https://github.com/steve-krisjanovs/toneai-nux-qr-ironbound"
  version "1.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/steve-krisjanovs/toneai-nux-qr-ironbound/releases/download/setup-release/toneai-setup-mac-arm64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/steve-krisjanovs/toneai-nux-qr-ironbound/releases/download/setup-release/toneai-setup-mac-x64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install Dir["toneai-setup-mac-*"].first => "toneai-setup"
  end

  test do
    assert_match "ToneAI", shell_output("#{bin}/toneai-setup --help 2>&1 || true")
  end
end
