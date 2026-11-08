class Ytdl < Formula
  desc "Download YouTube audio/video from the clipboard link (original audio, WAV, MP3, MP4)"
  homepage "https://github.com/jdevesablanco/homebrew-tap"
  url "https://raw.githubusercontent.com/jdevesablanco/homebrew-tap/3a51ad644833f8131cc837f762b3dedd625eeb8e/scripts/ytdl"
  version "1.1.1"
  sha256 "195b70ba0f90a60d667fa0d395157787ece26132d9796bc58bcc7f8126091456"
  license "MIT"

  depends_on :macos
  depends_on "ffmpeg"
  depends_on "yt-dlp"

  def install
    bin.install "ytdl"
  end

  def caveats
    <<~EOS
      Cómo se usa:
        1. Copia un enlace de YouTube (⌘C en la barra de direcciones).
        2. Escribe en Terminal:  ytdl
      ytdl lee el enlace de tu portapapeles: no hace falta pegarlo.

        ytdl          # audio original, sin recomprimir
        ytdl wav      # WAV 24 bit / 48 kHz
        ytdl mp3
        ytdl mp4
        ytdl help     # todas las opciones

      Se guarda en ~/Downloads. Si deja de funcionar: brew upgrade yt-dlp
    EOS
  end

  test do
    system "bash", "-n", "#{bin}/ytdl"
  end
end
