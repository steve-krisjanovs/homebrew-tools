# Formula for homebrew-tools repo: steve-krisjanovs/homebrew-tools
# Place this at: Formula/toneai-nux-qr.rb
#
# To install:
#   brew tap steve-krisjanovs/tools
#   brew install toneai-nux-qr

class ToneaiNuxQr < Formula
  desc "AI-generated NUX MightyAmp QR tone presets for any song or album"
  homepage "https://github.com/steve-krisjanovs/toneai-nux-qr"
  version "1.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/steve-krisjanovs/toneai-nux-qr/releases/download/v#{version}/tnqr-mac-arm64"
      sha256 "6e63b67826a8982fddd59762c235195d960d0c9986aae12c2fd089812fde610d"
    end
    on_intel do
      url "https://github.com/steve-krisjanovs/toneai-nux-qr/releases/download/v#{version}/tnqr-mac-x64"
      sha256 "81cc8c1499784bacd6d496d007cdb0604faeb679374a12e84f3be54b53c41bcc"
    end
  end

  def install
    bin.install Dir["tnqr-mac-*"].first => "tnqr"
  end

  test do
    assert_match "tnqr", shell_output("#{bin}/tnqr --help")
  end
end
