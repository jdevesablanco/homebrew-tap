class Ytdl < Formula
  desc "Download YouTube audio/video from the clipboard link (original audio, WAV, MP3, MP4)"
  homepage "https://github.com/jdevesablanco/homebrew-tap"
  url "https://raw.githubusercontent.com/jdevesablanco/homebrew-tap/5d4531344a9a0a1aabecc710409b8ab0e293aee2/scripts/ytdl"
  version "1.0.0"
  sha256 "f1f220f1f9f113ce9394669fe0a4441d3426288d0e473780da2c84e1723c18fd"
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
