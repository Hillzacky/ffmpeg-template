@echo off
setlocal

set "ffmpegURL=https://www.ffmpeg.org/releases/ffmpeg-latest-win64-static.zip"
set "ytdlURL=https://github.com/ytdl-org/youtube-dl/releases/download/2021.12.17/youtube-dl.exe"
set "downloadPath=%~dp0"
set "sourcePath=%~dp0source"

echo Downloading FFmpeg...
curl -L -o "%downloadPath%ffmpeg.zip" "%ffmpegURL%"

echo Extracting FFmpeg...
mkdir "%extractPath%"
tar -xzf "%downloadPath%ffmpeg.zip" -C "%sourcePath%" --strip-components 1

echo Downloading ytdl...
curl -L -o "%downloadPath%\source\bin\youtube-dl.exe" "%ytdlURL%"

echo Adding FFmpeg to PATH...
setx PATH "%PATH%;%sourcePath%\bin"

echo Installation complete.
