#!/bin/bash

# generate tfm files
for file in *.ttf;do
    ttf2tfm $file -p T1-WGL4.enc;
done;

# end of file
