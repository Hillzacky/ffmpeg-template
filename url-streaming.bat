@echo off
setlocal

set STREAM_KEY=YOUR_YOUTUBE_STREAM_KEY
set INPUT_URL=https://www.youtube.com/watch?v=YOUR_VIDEO_ID

for /f "delims=" %%i in ('youtube-dl -g "%INPUT_URL%"') do set VIDEO_URL=%%i

ffmpeg -re -i "%VIDEO_URL%" -vcodec copy -acodec aac -strict experimental -f flv "rtmp://a.rtmp.youtube.com/live2/%STREAM_KEY%"

:end
