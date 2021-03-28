from PIL import Image
import sys

img = Image.open(sys.argv[1])
px = img.load()
WIDTH, HEIGHT = img.size

with open(sys.argv[1].split('.')[0] + '.tbi','w', encoding='utf-8') as f:
    write = f"\n"
    for y in range(HEIGHT):
        for x in range(WIDTH):
            r,g,b = px[x,y]
            write += f"[48;2;{r};{g};{b}m  "
        f.write(write)
        write = f"\n"