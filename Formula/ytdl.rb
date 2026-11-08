class Ytdl < Formula
  desc "Download YouTube audio/video from the clipboard link (original audio, WAV, MP3, MP4)"
  homepage "https://github.com/jdevesablanco/homebrew-tap"
  url "https://raw.githubusercontent.com/jdevesablanco/homebrew-tap/5223e3862be4709fddbede027160df28d42a1f5a/scripts/ytdl"
  version "1.1.0"
  sha256 "d27d078d6791b19bc5f1e432f7e3f12f618b3ff6da9e0a8fe3015eccee654a2e"
  license "MIT"

  depends_on :macos
  depends_on "ffmpeg"
  depends_on "yt-dlp"

  def install
    bin.install "ytdl"
  end

  def caveats
    <<~EOS
      Copy a YouTube link, then run:
        ytdl          # original audio, no re-encoding
        ytdl wav      # WAV 24-bit / 48 kHz
        ytdl mp3
        ytdl mp4
      Files are saved in ~/Downloads. Keep yt-dlp current with `brew upgrade yt-dlp`.
    EOS
  end

  test do
    system "bash", "-n", "#{bin}/ytdl"
  end
end
