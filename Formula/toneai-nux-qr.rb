# Formula for homebrew-tools repo: steve-krisjanovs/homebrew-tools
# Place this at: Formula/toneai-nux-qr.rb
#
# To install:
#   brew tap steve-krisjanovs/tools
#   brew install toneai-nux-qr

class ToneaiNuxQr < Formula
  desc "AI-generated NUX MightyAmp QR tone presets for any song or album"
  homepage "https://github.com/cordfuse/toneai-nux-cli"
  version "1.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cordfuse/toneai-nux-cli/releases/download/v#{version}/tnqr-mac-arm64"
      sha256 "48e17eb52bbe5171388189b49815977885bad921980c8fa6f1348382c92f31a3"
    end
    on_intel do
      url "https://github.com/cordfuse/toneai-nux-cli/releases/download/v#{version}/tnqr-mac-x64"
      sha256 "ffbfd5bed326e6607cc5772929598d85fbe85a17334de61f4e64d070b5dc4500"
    end
  end

  def install
    bin.install Dir["tnqr-mac-*"].first => "tnqr"
  end

  test do
    assert_match "tnqr", shell_output("#{bin}/tnqr --help")
  end
end
