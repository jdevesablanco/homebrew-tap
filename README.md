# jdevesablanco/tap

```bash
brew install jdevesablanco/tap/ytdl
brew install --cask jdevesablanco/tap/splitexercises
brew install --cask jdevesablanco/tap/quitall
brew install --cask jdevesablanco/tap/piemenu
brew install --cask jdevesablanco/tap/vsplit
```

| App | What it does |
|---|---|
| ytdl | Terminal command: copy a YouTube link, run `ytdl` (original audio) / `ytdl wav` / `mp3` / `mp4`. Saves to ~/Downloads |
| [SplitExercises](https://github.com/jdevesablanco/SplitExercises) | Splits an exercise PDF into one exercise per sheet, from the right-click menu |
| [QuitAll](https://github.com/jdevesablanco/QuitAll) | Quits every open app in one click, except the ones you pick |
| [PieMenu](https://github.com/jdevesablanco/PieMenu) | A radial menu at the pointer with your apps, shortcuts and Automator, on ⌃Tab |
| [VSplit](https://github.com/jdevesablanco/VSplit) | Splits a MIDI clip from Logic Pro into natural voices and drags each one back as its own track |

Or `brew tap jdevesablanco/tap` and then `brew install --cask <app>`.

## ytdl — descargar audio/vídeo de YouTube desde Terminal

Requiere macOS y [Homebrew](https://brew.sh).

**1. Instalar Homebrew** (solo si no lo tienes; pega la línea de la portada de brew.sh y sigue los "Next steps" que muestra al terminar):

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

**2. Instalar ytdl** (trae `yt-dlp` y `ffmpeg` solo):

```bash
brew install jdevesablanco/tap/ytdl
```

**3. Usarlo**: copia un enlace de YouTube (⌘C en la barra de direcciones) y escribe en Terminal:

```bash
ytdl          # audio original, sin recomprimir (.webm/Opus o .m4a)
ytdl wav      # WAV 24 bit / 48 kHz
ytdl mp3
ytdl mp4
ytdl help     # todas las opciones
```

Lee el enlace del portapapeles, guarda en `~/Downloads` y al terminar abre Finder con el archivo seleccionado.

**Actualizar** (si YouTube cambia algo y deja de funcionar): `ytdl update`
