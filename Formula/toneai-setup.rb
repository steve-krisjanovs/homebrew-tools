# Formula for homebrew-tools tap: steve-krisjanovs/homebrew-tools
# To install:
#   brew tap steve-krisjanovs/tools
#   brew install toneai-setup

class ToneaiSetup < Formula
  desc "Setup wizard for ToneAI — AI-powered NUX MightyAmp tone assistant"
  homepage "https://github.com/steve-krisjanovs/toneai-nux-qr-ironbound"
  version "1.1.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/steve-krisjanovs/toneai-nux-qr-ironbound/releases/download/v1.1.7/toneai-setup-mac-arm64"
      sha256 "f082c276acd52b8752718bfffa471b860738e39c7c2082fe8e257a42ebc909e9"
    end
    on_intel do
      url "https://github.com/steve-krisjanovs/toneai-nux-qr-ironbound/releases/download/v1.1.7/toneai-setup-mac-x64"
      sha256 "84eb3f55d81000f874aa9130e2567572f1deeea9648f90a9d4db7a39d538d905"
    end
  end

  def install
    bin.install Dir["toneai-setup-mac-*"].first => "toneai-setup"
  end

  test do
    assert_match "ToneAI", shell_output("#{bin}/toneai-setup --help 2>&1 || true")
  end
end
