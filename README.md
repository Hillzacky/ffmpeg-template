# ffmpeg-template
Collection command for ffmpeg

> Buka cmd windows kemudian tempel perintah di bawah ini dan tekan enter
``` cmd
curl -L -o "%~dp0%ffmpeg-template-master.zip" "https://github.com/Hillzacky/ffmpeg-template/archive/master.zip"
&& tar -xzf "%~dp0%ffmpeg-template-master.zip" -C "%~dp0" --strip-components 1
&& call install_ffmpeg.bat
&& del install_ffmpeg.bat
```
