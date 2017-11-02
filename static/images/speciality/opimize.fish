#!/bin/env fish

# https://stackoverflow.com/questions/7261855/recommendation-for-compressing-jpg-files-with-imagemagick#7262050
for i in *.jpg;convert -strip -interlace Plane -gaussian-blur 0.05 -quality 85% $i $i;end
