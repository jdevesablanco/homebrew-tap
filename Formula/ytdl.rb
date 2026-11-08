class Ytdl < Formula
  desc "Download YouTube audio/video from the clipboard link (original audio, WAV, MP3, MP4)"
  homepage "https://github.com/jdevesablanco/homebrew-tap"
  url "https://raw.githubusercontent.com/jdevesablanco/homebrew-tap/4581fe392de561c37ac1146b729d2d20bc2356cd/scripts/ytdl"
  version "1.4.0"
  sha256 "dd3beecf1751a2f6468bfe72a506459e82aa1982c7d5cc6af5682bb26d25cdf4"
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

      Se guarda en ~/Downloads. Se actualiza solo (como mucho 1 vez al día) y reintenta si falla.
      Desactivar: YTDL_NO_UPDATE=1 ytdl   ·   Manual: ytdl update
    EOS
  end

  test do
    system "bash", "-n", "#{bin}/ytdl"
  end
end
