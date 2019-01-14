##### Encoder plusieurs MP3 d'un coup en 220k
```
mkdir -p out fat && for i in *.{wav,mp4,m4a}; do ffmpeg -i "$i" -ab 220k "out/${i%.wav}.mp3" && mv $i fat/; done && say -v "zarvox" maï naïme iz zarvoks, I come from ze fiouture
```
