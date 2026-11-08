class Ytdl < Formula
  desc "Download YouTube audio/video from the clipboard link (original audio, WAV, MP3, MP4)"
  homepage "https://github.com/jdevesablanco/homebrew-tap"
  url "https://raw.githubusercontent.com/jdevesablanco/homebrew-tap/22df54257fa9e37648e490c1820ed3836cb33a37/scripts/ytdl"
  version "1.2.0"
  sha256 "574e0567be09729f762f58477a06f9f1ae9a47d88bb3ec9251b841c7dd3caac9"
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

      Al terminar abre Finder con el archivo seleccionado.

      Se guarda en ~/Downloads. Si deja de funcionar: brew upgrade yt-dlp
    EOS
  end

  test do
    system "bash", "-n", "#{bin}/ytdl"
  end
end
