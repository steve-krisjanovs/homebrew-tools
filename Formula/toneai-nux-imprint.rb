# Formula for homebrew-tools tap: steve-krisjanovs/homebrew-tools
# To install:
#   brew tap steve-krisjanovs/tools
#   brew install toneai-nux-imprint

class ToneaiNuxImprint < Formula
  desc "Setup wizard for ToneAI — AI-powered NUX MightyAmp tone assistant"
  homepage "https://github.com/steve-krisjanovs/toneai-nux-imprint"
  version "1.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/steve-krisjanovs/toneai-nux-imprint/releases/download/v1.5.0/toneai-nux-imprint-mac-arm64"
      sha256 "c15c6bb06eaa962c01cf0cb4a5969dbf055d19f9f71341e42ca8d98447e23170"
    end
    on_intel do
      url "https://github.com/steve-krisjanovs/toneai-nux-imprint/releases/download/v1.5.0/toneai-nux-imprint-mac-x64"
      sha256 "0877bb3761b5d3d8e9c199c6fdecc571292314409549d3f9deb0a6da0f9a462a"
    end
  end

  def install
    bin.install Dir["toneai-nux-imprint-mac-*"].first => "toneai-nux-imprint"
  end

  test do
    assert_match "ToneAI", shell_output("#{bin}/toneai-nux-imprint --help 2>&1 || true")
  end
end
