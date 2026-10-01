class Transcribe < Formula
  desc "On-device audio transcription using Apple's SpeechAnalyzer"
  homepage "https://github.com/llimllib/transcribe"
  url "https://github.com/llimllib/transcribe/releases/download/v0.1.1/transcribe-v0.1.1-darwin-arm64.tar.gz"
  version "0.1.1"
  sha256 "d0b9e6e415efad81e87f7bebf43d659ad14b2d5d8d130758a7404fed9cf61438"
  license "MIT"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  def install
    bin.install "transcribe"
  end

  test do
    assert_match "usage: transcribe", shell_output("#{bin}/transcribe --help")
  end
end
