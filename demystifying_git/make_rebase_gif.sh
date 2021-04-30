ffmpeg -i rebase2.m4v -vf "crop=300:400:0:50" -t 0:00:20 -r 20 -f image2pipe -vcodec ppm - | convert -delay 5 -layers Optimize -loop 0 - rebase2.gif
