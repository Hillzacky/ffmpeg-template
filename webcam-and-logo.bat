ffmpeg -f x11grab -video_size 1680x1050 -framerate 30 -i :0.0 \
-f v4l2 -video_size 320x240 -framerate 30 -i /dev/video0 \
-f alsa -ac 2 -i hw:0,0 -i logo.png -filter_complex \
"[0:v]scale=1024:-1,setpts=PTS-STARTPTS[bg]; \
 [1:v]scale=120:-1,setpts=PTS-STARTPTS[fg]; \
 [bg][fg]overlay=W-w-10:10[bg2]; \
 [bg2][3:v]overlay=W-w-10:H-h-10,format=yuv420p[v]"
-map "[v]" -map 2:a -c:v libx264 -preset veryfast \
-maxrate 3000k -bufsize 4000k -c:a aac -b:a 160k -ar 44100 \
-f flv rtmp://live.twitch.tv/app/<stream key>
