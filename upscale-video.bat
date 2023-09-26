# untuk merubah ke ukuran yang lebih tinggi ganti *2 dengan *4 atau *8

ffmpeg.exe -i input.mp4 -vf scale=iw*2:ih*2:flags=neighbor -c:v libx264 -preset slow -crf 18 output.mp4
