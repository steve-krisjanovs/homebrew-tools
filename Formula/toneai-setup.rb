# Formula for homebrew-tools tap: steve-krisjanovs/homebrew-tools
# To install:
#   brew tap steve-krisjanovs/tools
#   brew install toneai-setup

class ToneaiSetup < Formula
  desc "Setup wizard for ToneAI — AI-powered NUX MightyAmp tone assistant"
  homepage "https://github.com/steve-krisjanovs/toneai-nux-qr-ironbound"
  version "1.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/steve-krisjanovs/toneai-nux-qr-ironbound/releases/download/v1.2.1/toneai-setup-mac-arm64"
      sha256 "4dd14c8b77959551ae66bdd78c2d4b876e8c630d61ed46d5d2477f10f8c1203e"
    end
    on_intel do
      url "https://github.com/steve-krisjanovs/toneai-nux-qr-ironbound/releases/download/v1.2.1/toneai-setup-mac-x64"
      sha256 "1175f5fda591f17268958df135159a2a9c09ed0772e52a113b35cfdc448b32d4"
    end
  end

  def install
    bin.install Dir["toneai-setup-mac-*"].first => "toneai-setup"
  end

  test do
    assert_match "ToneAI", shell_output("#{bin}/toneai-setup --help 2>&1 || true")
  end
end
