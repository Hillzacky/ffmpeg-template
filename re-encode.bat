ffmpeg.exe -i input.mp4 -c:v libx264 -preset slow -crf 18 -c:a aac -b:a 192k -pix_fmt yuv420p output.mkv
