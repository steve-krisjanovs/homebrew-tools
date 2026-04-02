# Formula for homebrew-tools repo: steve-krisjanovs/homebrew-tools
# Place this at: Formula/toneai-nux-qr.rb
#
# To install:
#   brew tap steve-krisjanovs/tools
#   brew install toneai-nux-qr

class ToneaiNuxQr < Formula
  desc "AI-generated NUX MightyAmp QR tone presets for any song or album"
  homepage "https://github.com/steve-krisjanovs/toneai-nux-qr"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/steve-krisjanovs/toneai-nux-qr/releases/download/v#{version}/tnqr-mac-arm64"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
    on_intel do
      url "https://github.com/steve-krisjanovs/toneai-nux-qr/releases/download/v#{version}/tnqr-mac-x64"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
  end

  def install
    bin.install Dir["tnqr-mac-*"].first => "tnqr"
  end

  test do
    assert_match "tnqr", shell_output("#{bin}/tnqr --help")
  end
end
