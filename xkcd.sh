#!/bin/bash


random_comic=$(shuf -i 1-$(curl -s https://xkcd.com/info.0.json | jq -r .num) -n 1)

# Fetch 
img_url=$(curl -s https://xkcd.com/$random_comic/info.0.json | jq -r .img)

# for foot terminal
curl -s "$img_url" | img2sixel
