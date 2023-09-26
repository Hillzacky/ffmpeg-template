# membuat gambar berulang menjadi video dengan suara
ffmpeg.exe -loop 1 -framerate 2 -i input.png -i audio.mp3 -c:v libx264 -preset medium -tune stillimage -crf 18 -c:a copy -shortest -pix_fmt yuv420p output.mp4
