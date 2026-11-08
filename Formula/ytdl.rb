class Ytdl < Formula
  desc "Download YouTube audio/video from the clipboard link (original audio, WAV, MP3, MP4)"
  homepage "https://github.com/jdevesablanco/homebrew-tap"
  url "https://raw.githubusercontent.com/jdevesablanco/homebrew-tap/7c0a87337724913eba06ac2ee19c70e2a1899097/scripts/ytdl"
  version "1.4.2"
  sha256 "6928016ca27374febb56f96458ae9448be25dd3760f9b18eddb328b42d5c1c23"
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
