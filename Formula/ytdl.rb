class Ytdl < Formula
  desc "Download YouTube audio/video from the clipboard link (original audio, WAV, MP3, MP4)"
  homepage "https://github.com/jdevesablanco/homebrew-tap"
  url "https://raw.githubusercontent.com/jdevesablanco/homebrew-tap/26eb9612efdd86044a0f169093d542ed48824b49/scripts/ytdl"
  version "1.4.1"
  sha256 "32f1ec4f2d461cb191cf28a9fcc8203d29b25b6029d538f6548a95b67a89616e"
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

      Se guarda en ~/Downloads. Se actualiza solo.
      Desactivar: YTDL_NO_UPDATE=1 ytdl   ·   Manual: ytdl update
    EOS
  end

  test do
    system "bash", "-n", "#{bin}/ytdl"
  end
end
