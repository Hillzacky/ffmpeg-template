@echo off
setlocal

set "ffmpegURL=https://www.ffmpeg.org/releases/ffmpeg-latest-win64-static.zip"
set "downloadPath=%~dp0"
set "extractPath=%~dp0ffmpeg"

echo Downloading FFmpeg...
curl -L -o "%downloadPath%ffmpeg.zip" "%ffmpegURL%"

echo Extracting FFmpeg...
mkdir "%extractPath%"
tar -xzf "%downloadPath%ffmpeg.zip" -C "%extractPath%" --strip-components 1

echo Adding FFmpeg to PATH...
setx PATH "%PATH%;%extractPath%\bin"

echo FFmpeg installation complete.
