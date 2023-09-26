ffmpeg -re -i input.mp4 -map 0 -flags +global_header -c:v libx264 -c:a aac -b:v 1000k -maxrate 1000k -bufsize 2000k -g 50 -flags +global_header -f tee \
"[f=flv:onfail=ignore]rtmps://live-api-s.facebook.com:443/rtmp/STREAM_KEY|[f=flv:onfail=ignore]rtmp://a.rtmp.youtube.com/live2/STREAM_KEY"
