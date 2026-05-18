# Formula for homebrew-tools tap: steve-krisjanovs/homebrew-tools
# To install:
#   brew tap steve-krisjanovs/tools
#   brew install toneai-nux-imprint

class ToneaiNuxImprint < Formula
  desc "Setup wizard for ToneAI — AI-powered NUX MightyAmp tone assistant"
  homepage "https://github.com/steve-krisjanovs/toneai-nux-imprint"
  version "1.4.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/steve-krisjanovs/toneai-nux-imprint/releases/download/v1.4.3/toneai-nux-imprint-mac-arm64"
      sha256 "e89bccf8a098f594db9ce7275698b9f88b40dc1ec3e9230b5d0f3a32b9c79cdf"
    end
    on_intel do
      url "https://github.com/steve-krisjanovs/toneai-nux-imprint/releases/download/v1.4.3/toneai-nux-imprint-mac-x64"
      sha256 "9e075c291786177ffd43ab0387ec307821530e085ac3e499b03d4043b868bfb3"
    end
  end

  def install
    bin.install Dir["toneai-nux-imprint-mac-*"].first => "toneai-nux-imprint"
  end

  test do
    assert_match "ToneAI", shell_output("#{bin}/toneai-nux-imprint --help 2>&1 || true")
  end
end
