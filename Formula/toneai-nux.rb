# Formula for homebrew-tools tap: steve-krisjanovs/homebrew-tools
# To install:
#   brew tap steve-krisjanovs/tools
#   brew install toneai-nux

class ToneaiNux < Formula
  desc "Setup wizard for ToneAI — AI-powered NUX MightyAmp tone assistant"
  homepage "https://github.com/steve-krisjanovs/toneai-nux"
  version "1.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/steve-krisjanovs/toneai-nux/releases/download/v1.4.0/toneai-nux-mac-arm64"
      sha256 "e9a2ebac1e0ad0d3357fbd64f5f4a1162da7d0c817545b61a61f69adce53d7fb"
    end
    on_intel do
      url "https://github.com/steve-krisjanovs/toneai-nux/releases/download/v1.4.0/toneai-nux-mac-x64"
      sha256 "e42594569aee7a493d29a53964866e59c7e5606390b57a6aa345ef7c56540152"
    end
  end

  def install
    bin.install Dir["toneai-nux-mac-*"].first => "toneai-nux"
  end

  test do
    assert_match "ToneAI", shell_output("#{bin}/toneai-nux --help 2>&1 || true")
  end
end
