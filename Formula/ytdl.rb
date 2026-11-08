class Ytdl < Formula
  desc "Download YouTube audio/video from the clipboard link (original audio, WAV, MP3, MP4)"
  homepage "https://github.com/jdevesablanco/homebrew-tap"
  url "https://raw.githubusercontent.com/jdevesablanco/homebrew-tap/d3ce814b62840ca75a916437793ec1acf61eb4f5/scripts/ytdl"
  version "1.3.0"
  sha256 "3a4fdd73e3803fd6814f1546bad290217e38d8dae7f8bd32b86aacdf578abb7f"
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

      Se guarda en ~/Downloads. Si deja de funcionar: ytdl update
    EOS
  end

  test do
    system "bash", "-n", "#{bin}/ytdl"
  end
end
