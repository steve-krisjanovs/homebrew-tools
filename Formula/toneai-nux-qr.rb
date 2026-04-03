# Formula for homebrew-tools repo: steve-krisjanovs/homebrew-tools
# Place this at: Formula/toneai-nux-qr.rb
#
# To install:
#   brew tap steve-krisjanovs/tools
#   brew install toneai-nux-qr

class ToneaiNuxQr < Formula
  desc "AI-generated NUX MightyAmp QR tone presets for any song or album"
  homepage "https://github.com/steve-krisjanovs/toneai-nux-qr"
  version "1.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/steve-krisjanovs/toneai-nux-qr/releases/download/v#{version}/tnqr-mac-arm64"
      sha256 "aaca4cffe0544a0480278fc43d0abc67ce6c7c9e5df0ae5964bac090a680a521"
    end
    on_intel do
      url "https://github.com/steve-krisjanovs/toneai-nux-qr/releases/download/v#{version}/tnqr-mac-x64"
      sha256 "26f1aa9b247d28bb7d2d87a9d61ea87b2ec0955fd3e7cd2746930892a4ae185f"
    end
  end

  def install
    bin.install Dir["tnqr-mac-*"].first => "tnqr"
  end

  test do
    assert_match "tnqr", shell_output("#{bin}/tnqr --help")
  end
end
