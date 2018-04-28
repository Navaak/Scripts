

ffmpeg -i video-file-path -f image2 -bt 20M -vf fps=fps=1/20 snapshots/dir/shot%02d.jpg
