# Formula for homebrew-tools tap: steve-krisjanovs/homebrew-tools
# To install:
#   brew tap steve-krisjanovs/tools
#   brew install toneai-nux

class ToneaiNux < Formula
  desc "Setup wizard for ToneAI — AI-powered NUX MightyAmp tone assistant"
  homepage "https://github.com/steve-krisjanovs/toneai-nux-imprint"
  version "1.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/steve-krisjanovs/toneai-nux-imprint/releases/download/v1.4.2/toneai-nux-mac-arm64"
      sha256 "2bf92f4313359ea9a2145ef473184c8115fe4b1b6a7d1e70d0654fd616fff0c1"
    end
    on_intel do
      url "https://github.com/steve-krisjanovs/toneai-nux-imprint/releases/download/v1.4.2/toneai-nux-mac-x64"
      sha256 "b2dbb63b1cc567c408d9b26f08f1b21aaaa26e1580b20fd392ab3b65b2bd9925"
    end
  end

  def install
    bin.install Dir["toneai-nux-mac-*"].first => "toneai-nux"
  end

  test do
    assert_match "ToneAI", shell_output("#{bin}/toneai-nux --help 2>&1 || true")
  end
end
