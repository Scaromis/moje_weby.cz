# ================================================================
#  Truhlarstvi Vojtech - stazeni fotek z jejich webu
#  Spousti se pres stahni-fotky.bat. Z kazde galerie na
#  truhlarstvivojtech.cz vezme prvnich 20 fotek a ulozi je do
#  slozky _zdroje vedle tohoto souboru. Nic jineho nedela.
# ================================================================
$ErrorActionPreference = 'Continue'
$ProgressPreference = 'SilentlyContinue'
$base = 'http://www.truhlarstvivojtech.cz'
$max = 20
$root = Join-Path $PSScriptRoot '_zdroje'

# galerie: slozka = cislo stranky na jejich webu
$cats = [ordered]@{
  'detske-pokoje'                 = 1350
  'dvere-interierove'             = 1353
  'dvere-venkovni'                = 1359
  'komercni-prostory'             = 1362
  'kuchyne'                       = 1366
  'loznice'                       = 1376
  'obyvaci-pokoje'                = 1379
  'ostatni-nabytek'               = 1382
  'ploty-balkony-zahradni-domky'  = 1385
  'schodiste'                     = 1388
  'skrine-a-doplnky'              = 1391
  'soliter'                       = 1394
  'stoly'                         = 1397
}

# fotky z uvodniho slideru jejich webu
$uvod = @(
  'obr%C3%A1zky_Nokia_048.jpg',
  'Rodina_Vojt%C4%9Bchova_20_101.jpg',
  'R%C5%AFzn%C3%A9_foto_005.jpg',
  'Rodina_Vojt%C4%9Bchova_st._2009_010.jpg',
  'Rodina_Vojt%C4%9Bchova__14_002.jpg',
  'P1010893.JPG'
)

$chyby = 0
function Stahni($url, $soubor) {
  if (Test-Path $soubor) { return }
  try {
    Invoke-WebRequest -Uri $url -OutFile $soubor -UseBasicParsing -TimeoutSec 60
  } catch {
    Write-Host "   chyba: $url"
    $script:chyby++
  }
}

Write-Host 'Stahuji fotky z truhlarstvivojtech.cz ...'
Write-Host ''

$dir = Join-Path $root 'uvod'
New-Item -ItemType Directory -Force -Path $dir | Out-Null
$i = 0
foreach ($f in $uvod) {
  $i++
  Stahni "$base/wp-content/uploads/wpcu3er/3603/CU3ER_slide3/images//$f" (Join-Path $dir ('{0:D2}.jpg' -f $i))
}
Write-Host ("uvod: {0} fotek" -f $i)

foreach ($k in $cats.Keys) {
  $dir = Join-Path $root $k
  New-Item -ItemType Directory -Force -Path $dir | Out-Null
  try {
    $html = (Invoke-WebRequest -Uri "$base/?page_id=$($cats[$k])" -UseBasicParsing -TimeoutSec 60).Content
  } catch {
    Write-Host "$k : galerii se nepodarilo nacist"
    $chyby++
    continue
  }
  # jen fotky z teto galerie (bocni panel jejich webu ukazuje nahodne fotky z jinych)
  $urls = [regex]::Matches($html, 'href="([^"]*wp-content/gallery/' + $k + '/[^"]+?\.(?:jpe?g|png))"', 'IgnoreCase') |
          ForEach-Object { $_.Groups[1].Value } | Select-Object -Unique
  $i = 0
  foreach ($u in $urls) {
    if ($i -ge $max) { break }
    $i++
    if ($u -notmatch '^http') { $u = $base + $u }
    Stahni $u (Join-Path $dir ('{0:D2}.jpg' -f $i))
  }
  Write-Host ("{0}: {1} fotek" -f $k, $i)
}

Write-Host ''
if ($chyby -eq 0) { Write-Host 'Hotovo, vse stazeno.' } else { Write-Host "Hotovo, ale $chyby souboru se nepodarilo stahnout. Spust soubor znovu." }
