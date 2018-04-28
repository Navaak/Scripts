
# output scale = 426x240
ffmpeg -i $orginal_file -codec:v libx264 -profile:v baseline -preset slow -b:v 300k -maxrate 600k -bufsize 600k -vf scale=426x240 -threads 0 -codec:a libfdk_aac -b:a 96k $filne_name'.240.mp4'

# output scale = 640x360
ffmpeg -i $orginal_file -codec:v libx264 -profile:v baseline -preset slow -b:v 400k -maxrate 800k  -bufsize 800k   -vf scale=640x360  -threads 0 -codec:a libfdk_aac -b:a 96k $filne_name'.360.mp4'

# output scale = 854x480
ffmpeg -i $orginal_file -codec:v libx264 -profile:v main -preset slow -b:v 500k -maxrate 1000k -bufsize 1000k  -vf scale=854x480  -threads 0 -codec:a libfdk_aac -b:a 128k $filne_name'.480.mp4'

# output scale = 1280x720
ffmpeg -i $orginal_file -codec:v libx264 -profile:v high -preset slow -b:v 1500k -maxrate 3000k -bufsize 3000k -vf scale=1280x720 -threads 0 -codec:a libfdk_aac -b:a 196k $filne_name'.720.mp4'

