# Zmenší nové fotky od pana Vojtěcha pro web: img-nove/<obor>/01.jpg … (max 1400 px), úvod 1920 px
import os, sys
from PIL import Image, ImageOps
SRC = 'podklady/fotky-od-vojtecha'; OUT = 'web/img-nove'
OBORY = {
 'kuchyne': [('kuchyne', None)],
 'koupelny': [('koupelny', None)],
 'obyvaci-pokoje': [('obyvaci-pokoje', None)],
 'obklady-sten': [('steny', None)],
 'detske-pokoje-a-loznice': [('detske-pokoje-a-loznice', None)],
 'dvere': [('dvere', {'04'})],
 'schodiste': [('schody', None)],
 'soliterni-nabytek': [('soliterni-nabytek', {'05'})],
 'luxusni-nabytek': [('luxusni-nabytek', None), ('dalsi-luxusni-nabytek', None)],
 'komercni-prostory': [('komercni-prostory', None), ('jeste-restaurace', None)],   # tetovací salon + barbershop
 'restaurace': [('restaurace-a-dentalni-klinika', None)],
}
UVOD = ['kuchyne/02', 'kuchyne/16', 'steny/04', 'komercni-prostory/08', 'luxusni-nabytek/28', 'koupelny/14']
def save(src, dst, size):
    im = ImageOps.exif_transpose(Image.open(src)).convert('RGB')
    im.thumbnail((size, size), Image.LANCZOS)
    im.save(dst, 'JPEG', quality=78, optimize=True, progressive=True)
counts = {}
for obor, zdroje in OBORY.items():
    os.makedirs(f'{OUT}/{obor}', exist_ok=True); n = 0
    for slozka, vynech in zdroje:
        for f in sorted(os.listdir(f'{SRC}/{slozka}')):
            if not f.endswith('.jpg') or (vynech and f[:2] in vynech): continue
            n += 1; save(f'{SRC}/{slozka}/{f}', f'{OUT}/{obor}/{n:02d}.jpg', 1400)
    counts[obor] = n
os.makedirs(f'{OUT}/uvod', exist_ok=True)
for i, u in enumerate(UVOD, 1): save(f'{SRC}/{u}.jpg', f'{OUT}/uvod/{i:02d}.jpg', 1920)
print(counts)
