@echo off
rem ================================================================
rem  Prumstav Nachod - stazeni fotek, loga a certifikatu z jejich webu
rem  Vse se ulozi do slozky _zdroje vedle tohoto souboru.
rem  Obsahuje jen prikazy curl (stahovani z prumstavnachod.cz).
rem ================================================================
chcp 65001 >nul
cd /d "%~dp0"
where curl >nul 2>&1
if errorlevel 1 (
  echo Chybi program curl ^(soucast Windows 10 a 11^). Stahovani nelze spustit.
  pause
  exit /b 1
)
set CHYBY=0
echo Stahuji 174 souboru z prumstavnachod.cz ...
echo.
echo [1/174] _zdroje\velke\sidlo-panorama.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\velke\sidlo-panorama.jpg" "http://prumstavnachod.cz/data/filecache/19/IMG_1670.jpg" || set /a CHYBY+=1
echo [2/174] _zdroje\velke\sidlo-vchod.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\velke\sidlo-vchod.jpg" "http://prumstavnachod.cz/data/filecache/a9/IMG_1667_1_1.jpg" || set /a CHYBY+=1
echo [3/174] _zdroje\velke\obcanska-skolka.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\velke\obcanska-skolka.jpg" "http://prumstavnachod.cz/data/filecache/ac/obcanska_1.jpg" || set /a CHYBY+=1
echo [4/174] _zdroje\velke\bytova-dum.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\velke\bytova-dum.jpg" "http://prumstavnachod.cz/data/filecache/8e/bytova.jpg" || set /a CHYBY+=1
echo [5/174] _zdroje\velke\primator.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\velke\primator.jpg" "http://prumstavnachod.cz/data/filecache/1c/obcanska_1_2.jpg" || set /a CHYBY+=1
echo [6/174] _zdroje\logo\logo-prumstav-nachod.bmp
curl -fsSL --create-dirs --retry 2 -o "_zdroje\logo\logo-prumstav-nachod.bmp" "http://prumstavnachod.cz/data/filecache/b7/logo-Prumstav-Nachod.bmp" || set /a CHYBY+=1
echo [7/174] _zdroje\logo\znacka-spendlik.png
curl -fsSL --create-dirs --retry 2 -o "_zdroje\logo\znacka-spendlik.png" "http://prumstavnachod.cz/data/filecache/4b/Bez-nazvu.png" || set /a CHYBY+=1
echo [8/174] _zdroje\certifikaty\iso-9001.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\certifikaty\iso-9001.jpg" "http://prumstavnachod.cz/data/filecache/d8/20260618102411.jpg" || set /a CHYBY+=1
echo [9/174] _zdroje\certifikaty\iso-14001.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\certifikaty\iso-14001.jpg" "http://prumstavnachod.cz/data/filecache/b8/20260618102349.jpg" || set /a CHYBY+=1
echo [10/174] _zdroje\certifikaty\iso-45001.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\certifikaty\iso-45001.jpg" "http://prumstavnachod.cz/data/filecache/59/20250903092906.jpg" || set /a CHYBY+=1
echo [11/174] _zdroje\certifikaty\zelena-usporam.png
curl -fsSL --create-dirs --retry 2 -o "_zdroje\certifikaty\zelena-usporam.png" "http://prumstavnachod.cz/data/filecache/d9/download.php_1.png" || set /a CHYBY+=1
echo [12/174] _zdroje\seznam-referencnich-staveb.pdf
curl -fsSL --create-dirs --retry 2 -o "_zdroje\seznam-referencnich-staveb.pdf" "http://prumstavnachod.cz/data/filecache/af/Seznam-referencnich-staveb-prumstavnachod.cz.pdf" || set /a CHYBY+=1
echo [13/174] _zdroje\reference\prumyslova\batist-01.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\prumyslova\batist-01.jpg" "http://prumstavnachod.cz/data/filecache/7f/tn_zoom_obrazek_253.jpg" || set /a CHYBY+=1
echo [14/174] _zdroje\reference\prumyslova\batist-02.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\prumyslova\batist-02.jpg" "http://prumstavnachod.cz/data/filecache/d7/tn_zoom_obrazek_254.jpg" || set /a CHYBY+=1
echo [15/174] _zdroje\reference\prumyslova\batist-03.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\prumyslova\batist-03.jpg" "http://prumstavnachod.cz/data/filecache/c0/tn_zoom_obrazek_255.jpg" || set /a CHYBY+=1
echo [16/174] _zdroje\reference\prumyslova\batist-04.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\prumyslova\batist-04.jpg" "http://prumstavnachod.cz/data/filecache/51/tn_zoom_obrazek_256.jpg" || set /a CHYBY+=1
echo [17/174] _zdroje\reference\prumyslova\batist-05.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\prumyslova\batist-05.jpg" "http://prumstavnachod.cz/data/filecache/39/tn_zoom_obrazek_257.jpg" || set /a CHYBY+=1
echo [18/174] _zdroje\reference\prumyslova\batist-06.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\prumyslova\batist-06.jpg" "http://prumstavnachod.cz/data/filecache/bf/tn_zoom_obrazek_258.jpg" || set /a CHYBY+=1
echo [19/174] _zdroje\reference\prumyslova\batist-07.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\prumyslova\batist-07.jpg" "http://prumstavnachod.cz/data/filecache/08/tn_zoom_obrazek_259.jpg" || set /a CHYBY+=1
echo [20/174] _zdroje\reference\prumyslova\batist-08.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\prumyslova\batist-08.jpg" "http://prumstavnachod.cz/data/filecache/d5/tn_zoom_obrazek_260.jpg" || set /a CHYBY+=1
echo [21/174] _zdroje\reference\prumyslova\batist-09.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\prumyslova\batist-09.jpg" "http://prumstavnachod.cz/data/filecache/10/tn_zoom_obrazek_261.jpg" || set /a CHYBY+=1
echo [22/174] _zdroje\reference\prumyslova\batist-10.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\prumyslova\batist-10.jpg" "http://prumstavnachod.cz/data/filecache/90/tn_zoom_obrazek_262.jpg" || set /a CHYBY+=1
echo [23/174] _zdroje\reference\prumyslova\vapo-01.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\prumyslova\vapo-01.jpg" "http://prumstavnachod.cz/data/filecache/57/tn_zoom_obrazek_250.jpg" || set /a CHYBY+=1
echo [24/174] _zdroje\reference\prumyslova\vapo-02.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\prumyslova\vapo-02.jpg" "http://prumstavnachod.cz/data/filecache/04/tn_zoom_obrazek_251.jpg" || set /a CHYBY+=1
echo [25/174] _zdroje\reference\prumyslova\vapo-03.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\prumyslova\vapo-03.jpg" "http://prumstavnachod.cz/data/filecache/f2/tn_zoom_obrazek_252.jpg" || set /a CHYBY+=1
echo [26/174] _zdroje\reference\prumyslova\impro-01.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\prumyslova\impro-01.jpg" "http://prumstavnachod.cz/data/filecache/44/tn_zoom_obrazek_246.jpg" || set /a CHYBY+=1
echo [27/174] _zdroje\reference\prumyslova\impro-02.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\prumyslova\impro-02.jpg" "http://prumstavnachod.cz/data/filecache/0b/tn_zoom_obrazek_247.jpg" || set /a CHYBY+=1
echo [28/174] _zdroje\reference\prumyslova\impro-03.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\prumyslova\impro-03.jpg" "http://prumstavnachod.cz/data/filecache/b8/tn_zoom_obrazek_248.jpg" || set /a CHYBY+=1
echo [29/174] _zdroje\reference\prumyslova\impro-04.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\prumyslova\impro-04.jpg" "http://prumstavnachod.cz/data/filecache/f6/tn_zoom_obrazek_249.jpg" || set /a CHYBY+=1
echo [30/174] _zdroje\reference\prumyslova\mesa-nachod-01.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\prumyslova\mesa-nachod-01.jpg" "http://prumstavnachod.cz/data/filecache/35/tn_zoom_obrazek_37.jpg" || set /a CHYBY+=1
echo [31/174] _zdroje\reference\prumyslova\mesa-nachod-02.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\prumyslova\mesa-nachod-02.jpg" "http://prumstavnachod.cz/data/filecache/06/tn_zoom_obrazek_38.jpg" || set /a CHYBY+=1
echo [32/174] _zdroje\reference\prumyslova\mesa-nachod-03.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\prumyslova\mesa-nachod-03.jpg" "http://prumstavnachod.cz/data/filecache/e4/tn_zoom_obrazek_39.jpg" || set /a CHYBY+=1
echo [33/174] _zdroje\reference\prumyslova\mesa-nachod-04.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\prumyslova\mesa-nachod-04.jpg" "http://prumstavnachod.cz/data/filecache/5d/tn_zoom_obrazek_40.jpg" || set /a CHYBY+=1
echo [34/174] _zdroje\reference\prumyslova\mesa-nachod-05.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\prumyslova\mesa-nachod-05.jpg" "http://prumstavnachod.cz/data/filecache/a7/tn_zoom_obrazek_41.jpg" || set /a CHYBY+=1
echo [35/174] _zdroje\reference\prumyslova\mesa-nachod-06.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\prumyslova\mesa-nachod-06.jpg" "http://prumstavnachod.cz/data/filecache/28/tn_zoom_obrazek_42.jpg" || set /a CHYBY+=1
echo [36/174] _zdroje\reference\prumyslova\mesa-nachod-07.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\prumyslova\mesa-nachod-07.jpg" "http://prumstavnachod.cz/data/filecache/3b/tn_zoom_obrazek_43.jpg" || set /a CHYBY+=1
echo [37/174] _zdroje\reference\prumyslova\mesa-nachod-08.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\prumyslova\mesa-nachod-08.jpg" "http://prumstavnachod.cz/data/filecache/7a/tn_zoom_obrazek_44.jpg" || set /a CHYBY+=1
echo [38/174] _zdroje\reference\prumyslova\mesa-nachod-09.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\prumyslova\mesa-nachod-09.jpg" "http://prumstavnachod.cz/data/filecache/dc/tn_zoom_obrazek_45.jpg" || set /a CHYBY+=1
echo [39/174] _zdroje\reference\prumyslova\mesa-nachod-10.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\prumyslova\mesa-nachod-10.jpg" "http://prumstavnachod.cz/data/filecache/ff/tn_zoom_obrazek_46.jpg" || set /a CHYBY+=1
echo [40/174] _zdroje\reference\prumyslova\mesa-nachod-11.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\prumyslova\mesa-nachod-11.jpg" "http://prumstavnachod.cz/data/filecache/1f/tn_zoom_obrazek_47.jpg" || set /a CHYBY+=1
echo [41/174] _zdroje\reference\prumyslova\mesa-nachod-12.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\prumyslova\mesa-nachod-12.jpg" "http://prumstavnachod.cz/data/filecache/b8/tn_zoom_obrazek_48.jpg" || set /a CHYBY+=1
echo [42/174] _zdroje\reference\prumyslova\deva-nutricia-01.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\prumyslova\deva-nutricia-01.jpg" "http://prumstavnachod.cz/data/filecache/75/tn_zoom_obrazek_49.jpg" || set /a CHYBY+=1
echo [43/174] _zdroje\reference\prumyslova\deva-nutricia-02.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\prumyslova\deva-nutricia-02.jpg" "http://prumstavnachod.cz/data/filecache/29/tn_zoom_obrazek_50.jpg" || set /a CHYBY+=1
echo [44/174] _zdroje\reference\prumyslova\deva-nutricia-03.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\prumyslova\deva-nutricia-03.jpg" "http://prumstavnachod.cz/data/filecache/ca/tn_zoom_obrazek_51.jpg" || set /a CHYBY+=1
echo [45/174] _zdroje\reference\prumyslova\deva-nutricia-04.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\prumyslova\deva-nutricia-04.jpg" "http://prumstavnachod.cz/data/filecache/4a/tn_zoom_obrazek_52.jpg" || set /a CHYBY+=1
echo [46/174] _zdroje\reference\prumyslova\deva-nutricia-05.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\prumyslova\deva-nutricia-05.jpg" "http://prumstavnachod.cz/data/filecache/fe/tn_zoom_obrazek_53.jpg" || set /a CHYBY+=1
echo [47/174] _zdroje\reference\prumyslova\deva-nutricia-06.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\prumyslova\deva-nutricia-06.jpg" "http://prumstavnachod.cz/data/filecache/69/tn_zoom_obrazek_54.jpg" || set /a CHYBY+=1
echo [48/174] _zdroje\reference\prumyslova\ametek-01.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\prumyslova\ametek-01.jpg" "http://prumstavnachod.cz/data/filecache/a4/ametek_nachod.jpg" || set /a CHYBY+=1
echo [49/174] _zdroje\reference\prumyslova\tanex-plasty-01.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\prumyslova\tanex-plasty-01.jpg" "http://prumstavnachod.cz/data/filecache/7e/tn_zoom_obrazek_55.jpg" || set /a CHYBY+=1
echo [50/174] _zdroje\reference\prumyslova\tanex-plasty-02.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\prumyslova\tanex-plasty-02.jpg" "http://prumstavnachod.cz/data/filecache/75/tn_zoom_obrazek_56.jpg" || set /a CHYBY+=1
echo [51/174] _zdroje\reference\prumyslova\vce-hradec-kralove-01.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\prumyslova\vce-hradec-kralove-01.jpg" "http://prumstavnachod.cz/data/filecache/6e/tn_zoom_obrazek_57.jpg" || set /a CHYBY+=1
echo [52/174] _zdroje\reference\prumyslova\vce-hradec-kralove-02.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\prumyslova\vce-hradec-kralove-02.jpg" "http://prumstavnachod.cz/data/filecache/e2/tn_zoom_obrazek_58.jpg" || set /a CHYBY+=1
echo [53/174] _zdroje\reference\prumyslova\vce-hradec-kralove-03.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\prumyslova\vce-hradec-kralove-03.jpg" "http://prumstavnachod.cz/data/filecache/c9/tn_zoom_obrazek_59.jpg" || set /a CHYBY+=1
echo [54/174] _zdroje\reference\prumyslova\vce-hradec-kralove-04.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\prumyslova\vce-hradec-kralove-04.jpg" "http://prumstavnachod.cz/data/filecache/20/tn_zoom_obrazek_60.jpg" || set /a CHYBY+=1
echo [55/174] _zdroje\reference\prumyslova\vce-hradec-kralove-05.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\prumyslova\vce-hradec-kralove-05.jpg" "http://prumstavnachod.cz/data/filecache/51/tn_zoom_obrazek_61.jpg" || set /a CHYBY+=1
echo [56/174] _zdroje\reference\prumyslova\vce-hradec-kralove-06.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\prumyslova\vce-hradec-kralove-06.jpg" "http://prumstavnachod.cz/data/filecache/3c/tn_zoom_obrazek_62.jpg" || set /a CHYBY+=1
echo [57/174] _zdroje\reference\prumyslova\hzs-nachod-01.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\prumyslova\hzs-nachod-01.jpg" "http://prumstavnachod.cz/data/filecache/a6/tn_zoom_obrazek_63.jpg" || set /a CHYBY+=1
echo [58/174] _zdroje\reference\prumyslova\hzs-nachod-02.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\prumyslova\hzs-nachod-02.jpg" "http://prumstavnachod.cz/data/filecache/e8/tn_zoom_obrazek_64.jpg" || set /a CHYBY+=1
echo [59/174] _zdroje\reference\prumyslova\merkurtisk-01.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\prumyslova\merkurtisk-01.jpg" "http://prumstavnachod.cz/data/filecache/18/tn_zoom_obrazek_65.jpg" || set /a CHYBY+=1
echo [60/174] _zdroje\reference\prumyslova\merkurtisk-02.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\prumyslova\merkurtisk-02.jpg" "http://prumstavnachod.cz/data/filecache/f7/tn_zoom_obrazek_66.jpg" || set /a CHYBY+=1
echo [61/174] _zdroje\reference\prumyslova\merkurtisk-03.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\prumyslova\merkurtisk-03.jpg" "http://prumstavnachod.cz/data/filecache/c6/tn_zoom_obrazek_67.jpg" || set /a CHYBY+=1
echo [62/174] _zdroje\reference\prumyslova\integraf-nachod-01.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\prumyslova\integraf-nachod-01.jpg" "http://prumstavnachod.cz/data/filecache/a9/tn_zoom_obrazek_68.jpg" || set /a CHYBY+=1
echo [63/174] _zdroje\reference\prumyslova\integraf-nachod-02.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\prumyslova\integraf-nachod-02.jpg" "http://prumstavnachod.cz/data/filecache/54/tn_zoom_obrazek_69.jpg" || set /a CHYBY+=1
echo [64/174] _zdroje\reference\prumyslova\integraf-nachod-03.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\prumyslova\integraf-nachod-03.jpg" "http://prumstavnachod.cz/data/filecache/c0/tn_zoom_obrazek_70.jpg" || set /a CHYBY+=1
echo [65/174] _zdroje\reference\prumyslova\provio-fishman-01.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\prumyslova\provio-fishman-01.jpg" "http://prumstavnachod.cz/data/filecache/c2/provio.jpg" || set /a CHYBY+=1
echo [66/174] _zdroje\reference\prumyslova\mistral-slavonov-01.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\prumyslova\mistral-slavonov-01.jpg" "http://prumstavnachod.cz/data/filecache/a6/mistral_slavonov.jpg" || set /a CHYBY+=1
echo [67/174] _zdroje\reference\prumyslova\delta-air-01.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\prumyslova\delta-air-01.jpg" "http://prumstavnachod.cz/data/filecache/f3/obrazek_74.jpg" || set /a CHYBY+=1
echo [68/174] _zdroje\reference\prumyslova\delta-air-02.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\prumyslova\delta-air-02.jpg" "http://prumstavnachod.cz/data/filecache/fe/obrazek_75.jpg" || set /a CHYBY+=1
echo [69/174] _zdroje\reference\prumyslova\delta-air-03.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\prumyslova\delta-air-03.jpg" "http://prumstavnachod.cz/data/filecache/aa/obrazek_76.jpg" || set /a CHYBY+=1
echo [70/174] _zdroje\reference\prumyslova\rubena-nachod-01.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\prumyslova\rubena-nachod-01.jpg" "http://prumstavnachod.cz/data/filecache/84/rubena.jpg" || set /a CHYBY+=1
echo [71/174] _zdroje\reference\prumyslova\vce-mala-upa-01.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\prumyslova\vce-mala-upa-01.jpg" "http://prumstavnachod.cz/data/filecache/cf/tn_zoom_obrazek_77.jpg" || set /a CHYBY+=1
echo [72/174] _zdroje\reference\prumyslova\vce-mala-upa-02.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\prumyslova\vce-mala-upa-02.jpg" "http://prumstavnachod.cz/data/filecache/49/tn_zoom_obrazek_78.jpg" || set /a CHYBY+=1
echo [73/174] _zdroje\reference\prumyslova\vce-mala-upa-03.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\prumyslova\vce-mala-upa-03.jpg" "http://prumstavnachod.cz/data/filecache/0a/tn_zoom_obrazek_79.jpg" || set /a CHYBY+=1
echo [74/174] _zdroje\reference\obcanska\zs-cerveny-kostelec-01.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\obcanska\zs-cerveny-kostelec-01.jpg" "http://prumstavnachod.cz/data/filecache/57/obrazek_225.jpg" || set /a CHYBY+=1
echo [75/174] _zdroje\reference\obcanska\zs-cerveny-kostelec-02.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\obcanska\zs-cerveny-kostelec-02.jpg" "http://prumstavnachod.cz/data/filecache/15/obrazek_226.jpg" || set /a CHYBY+=1
echo [76/174] _zdroje\reference\obcanska\zs-cerveny-kostelec-03.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\obcanska\zs-cerveny-kostelec-03.jpg" "http://prumstavnachod.cz/data/filecache/f9/obrazek_227.jpg" || set /a CHYBY+=1
echo [77/174] _zdroje\reference\obcanska\zs-cerveny-kostelec-04.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\obcanska\zs-cerveny-kostelec-04.jpg" "http://prumstavnachod.cz/data/filecache/2c/obrazek_228.jpg" || set /a CHYBY+=1
echo [78/174] _zdroje\reference\obcanska\zs-cerveny-kostelec-05.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\obcanska\zs-cerveny-kostelec-05.jpg" "http://prumstavnachod.cz/data/filecache/e1/obrazek_229.jpg" || set /a CHYBY+=1
echo [79/174] _zdroje\reference\obcanska\zs-cerveny-kostelec-06.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\obcanska\zs-cerveny-kostelec-06.jpg" "http://prumstavnachod.cz/data/filecache/86/obrazek_230.jpg" || set /a CHYBY+=1
echo [80/174] _zdroje\reference\obcanska\zs-cerveny-kostelec-07.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\obcanska\zs-cerveny-kostelec-07.jpg" "http://prumstavnachod.cz/data/filecache/c0/obrazek_231.jpg" || set /a CHYBY+=1
echo [81/174] _zdroje\reference\obcanska\poliklinika-01.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\obcanska\poliklinika-01.jpg" "http://prumstavnachod.cz/data/filecache/cf/tn_zoom_obrazek_213.jpg" || set /a CHYBY+=1
echo [82/174] _zdroje\reference\obcanska\poliklinika-02.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\obcanska\poliklinika-02.jpg" "http://prumstavnachod.cz/data/filecache/7b/tn_zoom_obrazek_214.jpg" || set /a CHYBY+=1
echo [83/174] _zdroje\reference\obcanska\poliklinika-03.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\obcanska\poliklinika-03.jpg" "http://prumstavnachod.cz/data/filecache/6f/tn_zoom_obrazek_215.jpg" || set /a CHYBY+=1
echo [84/174] _zdroje\reference\obcanska\poliklinika-04.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\obcanska\poliklinika-04.jpg" "http://prumstavnachod.cz/data/filecache/ca/tn_zoom_obrazek_216.jpg" || set /a CHYBY+=1
echo [85/174] _zdroje\reference\obcanska\poliklinika-05.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\obcanska\poliklinika-05.jpg" "http://prumstavnachod.cz/data/filecache/15/tn_zoom_obrazek_217.jpg" || set /a CHYBY+=1
echo [86/174] _zdroje\reference\obcanska\poliklinika-06.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\obcanska\poliklinika-06.jpg" "http://prumstavnachod.cz/data/filecache/df/tn_zoom_obrazek_218.jpg" || set /a CHYBY+=1
echo [87/174] _zdroje\reference\obcanska\zs-batnovice-01.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\obcanska\zs-batnovice-01.jpg" "http://prumstavnachod.cz/data/filecache/a0/tn_zoom_obrazek_219.jpg" || set /a CHYBY+=1
echo [88/174] _zdroje\reference\obcanska\zs-batnovice-02.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\obcanska\zs-batnovice-02.jpg" "http://prumstavnachod.cz/data/filecache/8b/tn_zoom_obrazek_220.jpg" || set /a CHYBY+=1
echo [89/174] _zdroje\reference\obcanska\zs-batnovice-03.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\obcanska\zs-batnovice-03.jpg" "http://prumstavnachod.cz/data/filecache/b2/tn_zoom_obrazek_221.jpg" || set /a CHYBY+=1
echo [90/174] _zdroje\reference\obcanska\zs-batnovice-04.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\obcanska\zs-batnovice-04.jpg" "http://prumstavnachod.cz/data/filecache/72/tn_zoom_obrazek_222.jpg" || set /a CHYBY+=1
echo [91/174] _zdroje\reference\obcanska\zs-batnovice-05.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\obcanska\zs-batnovice-05.jpg" "http://prumstavnachod.cz/data/filecache/71/tn_zoom_obrazek_223.jpg" || set /a CHYBY+=1
echo [92/174] _zdroje\reference\obcanska\zs-batnovice-06.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\obcanska\zs-batnovice-06.jpg" "http://prumstavnachod.cz/data/filecache/a8/tn_zoom_obrazek_224.jpg" || set /a CHYBY+=1
echo [93/174] _zdroje\reference\obcanska\ms-na-frantisku-01.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\obcanska\ms-na-frantisku-01.jpg" "http://prumstavnachod.cz/data/filecache/ec/tn_zoom_obrazek_239.jpg" || set /a CHYBY+=1
echo [94/174] _zdroje\reference\obcanska\ms-na-frantisku-02.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\obcanska\ms-na-frantisku-02.jpg" "http://prumstavnachod.cz/data/filecache/7f/tn_zoom_obrazek_240.jpg" || set /a CHYBY+=1
echo [95/174] _zdroje\reference\obcanska\ms-na-frantisku-03.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\obcanska\ms-na-frantisku-03.jpg" "http://prumstavnachod.cz/data/filecache/0f/tn_zoom_obrazek_241.jpg" || set /a CHYBY+=1
echo [96/174] _zdroje\reference\obcanska\ms-na-frantisku-04.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\obcanska\ms-na-frantisku-04.jpg" "http://prumstavnachod.cz/data/filecache/ca/tn_zoom_obrazek_242.jpg" || set /a CHYBY+=1
echo [97/174] _zdroje\reference\obcanska\ms-na-frantisku-05.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\obcanska\ms-na-frantisku-05.jpg" "http://prumstavnachod.cz/data/filecache/19/tn_zoom_obrazek_243.jpg" || set /a CHYBY+=1
echo [98/174] _zdroje\reference\obcanska\ms-na-frantisku-06.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\obcanska\ms-na-frantisku-06.jpg" "http://prumstavnachod.cz/data/filecache/a4/tn_zoom_obrazek_244.jpg" || set /a CHYBY+=1
echo [99/174] _zdroje\reference\obcanska\ms-na-frantisku-07.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\obcanska\ms-na-frantisku-07.jpg" "http://prumstavnachod.cz/data/filecache/b9/tn_zoom_obrazek_245.jpg" || set /a CHYBY+=1
echo [100/174] _zdroje\reference\obcanska\zs-maleci-01.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\obcanska\zs-maleci-01.jpg" "http://prumstavnachod.cz/data/filecache/e2/tn_zoom_obrazek_195.jpg" || set /a CHYBY+=1
echo [101/174] _zdroje\reference\obcanska\zs-maleci-02.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\obcanska\zs-maleci-02.jpg" "http://prumstavnachod.cz/data/filecache/4d/tn_zoom_obrazek_197.jpg" || set /a CHYBY+=1
echo [102/174] _zdroje\reference\obcanska\zs-maleci-03.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\obcanska\zs-maleci-03.jpg" "http://prumstavnachod.cz/data/filecache/f6/tn_zoom_obrazek_198.jpg" || set /a CHYBY+=1
echo [103/174] _zdroje\reference\obcanska\zs-maleci-04.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\obcanska\zs-maleci-04.jpg" "http://prumstavnachod.cz/data/filecache/d6/tn_zoom_obrazek_199.jpg" || set /a CHYBY+=1
echo [104/174] _zdroje\reference\obcanska\zs-maleci-05.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\obcanska\zs-maleci-05.jpg" "http://prumstavnachod.cz/data/filecache/10/tn_zoom_obrazek_200.jpg" || set /a CHYBY+=1
echo [105/174] _zdroje\reference\obcanska\zs-maleci-06.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\obcanska\zs-maleci-06.jpg" "http://prumstavnachod.cz/data/filecache/4e/tn_zoom_obrazek_201.jpg" || set /a CHYBY+=1
echo [106/174] _zdroje\reference\obcanska\zs-maleci-07.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\obcanska\zs-maleci-07.jpg" "http://prumstavnachod.cz/data/filecache/0f/tn_zoom_obrazek_202.jpg" || set /a CHYBY+=1
echo [107/174] _zdroje\reference\obcanska\divadlo-jk-tyla-01.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\obcanska\divadlo-jk-tyla-01.jpg" "http://prumstavnachod.cz/data/filecache/44/tn_zoom_obrazek_206.jpg" || set /a CHYBY+=1
echo [108/174] _zdroje\reference\obcanska\divadlo-jk-tyla-02.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\obcanska\divadlo-jk-tyla-02.jpg" "http://prumstavnachod.cz/data/filecache/1f/tn_zoom_obrazek_207.jpg" || set /a CHYBY+=1
echo [109/174] _zdroje\reference\obcanska\divadlo-jk-tyla-03.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\obcanska\divadlo-jk-tyla-03.jpg" "http://prumstavnachod.cz/data/filecache/84/tn_zoom_obrazek_208.jpg" || set /a CHYBY+=1
echo [110/174] _zdroje\reference\obcanska\divadlo-jk-tyla-04.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\obcanska\divadlo-jk-tyla-04.jpg" "http://prumstavnachod.cz/data/filecache/35/tn_zoom_obrazek_209.jpg" || set /a CHYBY+=1
echo [111/174] _zdroje\reference\obcanska\divadlo-jk-tyla-05.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\obcanska\divadlo-jk-tyla-05.jpg" "http://prumstavnachod.cz/data/filecache/da/tn_zoom_obrazek_210.jpg" || set /a CHYBY+=1
echo [112/174] _zdroje\reference\obcanska\divadlo-jk-tyla-06.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\obcanska\divadlo-jk-tyla-06.jpg" "http://prumstavnachod.cz/data/filecache/65/tn_zoom_obrazek_211.jpg" || set /a CHYBY+=1
echo [113/174] _zdroje\reference\obcanska\divadlo-jk-tyla-07.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\obcanska\divadlo-jk-tyla-07.jpg" "http://prumstavnachod.cz/data/filecache/78/tn_zoom_obrazek_212.jpg" || set /a CHYBY+=1
echo [114/174] _zdroje\reference\obcanska\u-beranka-01.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\obcanska\u-beranka-01.jpg" "http://prumstavnachod.cz/data/filecache/15/tn_zoom_obrazek_90.jpg" || set /a CHYBY+=1
echo [115/174] _zdroje\reference\obcanska\u-beranka-02.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\obcanska\u-beranka-02.jpg" "http://prumstavnachod.cz/data/filecache/d7/tn_zoom_obrazek_80.jpg" || set /a CHYBY+=1
echo [116/174] _zdroje\reference\obcanska\u-beranka-03.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\obcanska\u-beranka-03.jpg" "http://prumstavnachod.cz/data/filecache/7b/tn_zoom_obrazek_81.jpg" || set /a CHYBY+=1
echo [117/174] _zdroje\reference\obcanska\u-beranka-04.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\obcanska\u-beranka-04.jpg" "http://prumstavnachod.cz/data/filecache/b4/tn_zoom_obrazek_82.jpg" || set /a CHYBY+=1
echo [118/174] _zdroje\reference\obcanska\u-beranka-05.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\obcanska\u-beranka-05.jpg" "http://prumstavnachod.cz/data/filecache/df/tn_zoom_obrazek_83.jpg" || set /a CHYBY+=1
echo [119/174] _zdroje\reference\obcanska\u-beranka-06.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\obcanska\u-beranka-06.jpg" "http://prumstavnachod.cz/data/filecache/6e/tn_zoom_obrazek_84.jpg" || set /a CHYBY+=1
echo [120/174] _zdroje\reference\obcanska\u-beranka-07.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\obcanska\u-beranka-07.jpg" "http://prumstavnachod.cz/data/filecache/8a/tn_zoom_obrazek_85.jpg" || set /a CHYBY+=1
echo [121/174] _zdroje\reference\obcanska\u-beranka-08.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\obcanska\u-beranka-08.jpg" "http://prumstavnachod.cz/data/filecache/0e/tn_zoom_obrazek_86.jpg" || set /a CHYBY+=1
echo [122/174] _zdroje\reference\obcanska\u-beranka-09.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\obcanska\u-beranka-09.jpg" "http://prumstavnachod.cz/data/filecache/3b/tn_zoom_obrazek_87.jpg" || set /a CHYBY+=1
echo [123/174] _zdroje\reference\obcanska\u-beranka-10.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\obcanska\u-beranka-10.jpg" "http://prumstavnachod.cz/data/filecache/cf/tn_zoom_obrazek_88.jpg" || set /a CHYBY+=1
echo [124/174] _zdroje\reference\obcanska\u-beranka-11.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\obcanska\u-beranka-11.jpg" "http://prumstavnachod.cz/data/filecache/b7/tn_zoom_obrazek_89.jpg" || set /a CHYBY+=1
echo [125/174] _zdroje\reference\obcanska\nemocnice-nachod-01.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\obcanska\nemocnice-nachod-01.jpg" "http://prumstavnachod.cz/data/filecache/10/tn_zoom_obrazek_91.jpg" || set /a CHYBY+=1
echo [126/174] _zdroje\reference\obcanska\nemocnice-nachod-02.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\obcanska\nemocnice-nachod-02.jpg" "http://prumstavnachod.cz/data/filecache/ec/tn_zoom_obrazek_92.jpg" || set /a CHYBY+=1
echo [127/174] _zdroje\reference\obcanska\nemocnice-nachod-03.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\obcanska\nemocnice-nachod-03.jpg" "http://prumstavnachod.cz/data/filecache/3e/tn_zoom_obrazek_93.jpg" || set /a CHYBY+=1
echo [128/174] _zdroje\reference\obcanska\nemocnice-nachod-04.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\obcanska\nemocnice-nachod-04.jpg" "http://prumstavnachod.cz/data/filecache/7f/tn_zoom_obrazek_94.jpg" || set /a CHYBY+=1
echo [129/174] _zdroje\reference\obcanska\nemocnice-nachod-05.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\obcanska\nemocnice-nachod-05.jpg" "http://prumstavnachod.cz/data/filecache/83/tn_zoom_obrazek_95.jpg" || set /a CHYBY+=1
echo [130/174] _zdroje\reference\obcanska\nemocnice-nachod-06.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\obcanska\nemocnice-nachod-06.jpg" "http://prumstavnachod.cz/data/filecache/7b/tn_zoom_obrazek_96.jpg" || set /a CHYBY+=1
echo [131/174] _zdroje\reference\obcanska\nemocnice-nachod-07.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\obcanska\nemocnice-nachod-07.jpg" "http://prumstavnachod.cz/data/filecache/20/tn_zoom_obrazek_97.jpg" || set /a CHYBY+=1
echo [132/174] _zdroje\reference\obcanska\meu-kostelec-01.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\obcanska\meu-kostelec-01.jpg" "http://prumstavnachod.cz/data/filecache/55/tn_zoom_obrazek_110.jpg" || set /a CHYBY+=1
echo [133/174] _zdroje\reference\obcanska\meu-kostelec-02.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\obcanska\meu-kostelec-02.jpg" "http://prumstavnachod.cz/data/filecache/56/tn_zoom_obrazek_111.jpg" || set /a CHYBY+=1
echo [134/174] _zdroje\reference\obcanska\zs-tgm-nachod-01.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\obcanska\zs-tgm-nachod-01.jpg" "http://prumstavnachod.cz/data/filecache/8f/tn_zoom_obrazek_98.jpg" || set /a CHYBY+=1
echo [135/174] _zdroje\reference\obcanska\zs-tgm-nachod-02.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\obcanska\zs-tgm-nachod-02.jpg" "http://prumstavnachod.cz/data/filecache/12/tn_zoom_obrazek_99.jpg" || set /a CHYBY+=1
echo [136/174] _zdroje\reference\obcanska\zs-tgm-nachod-03.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\obcanska\zs-tgm-nachod-03.jpg" "http://prumstavnachod.cz/data/filecache/44/tn_zoom_obrazek_100.jpg" || set /a CHYBY+=1
echo [137/174] _zdroje\reference\obcanska\penny-market-01.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\obcanska\penny-market-01.jpg" "http://prumstavnachod.cz/data/filecache/e4/tn_zoom_obrazek_101.jpg" || set /a CHYBY+=1
echo [138/174] _zdroje\reference\obcanska\penny-market-02.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\obcanska\penny-market-02.jpg" "http://prumstavnachod.cz/data/filecache/f3/tn_zoom_obrazek_102.jpg" || set /a CHYBY+=1
echo [139/174] _zdroje\reference\obcanska\penny-market-03.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\obcanska\penny-market-03.jpg" "http://prumstavnachod.cz/data/filecache/27/tn_zoom_obrazek_103.jpg" || set /a CHYBY+=1
echo [140/174] _zdroje\reference\obcanska\prodejna-piva-01.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\obcanska\prodejna-piva-01.jpg" "http://prumstavnachod.cz/data/filecache/88/tn_zoom_obrazek_104.jpg" || set /a CHYBY+=1
echo [141/174] _zdroje\reference\obcanska\prodejna-piva-02.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\obcanska\prodejna-piva-02.jpg" "http://prumstavnachod.cz/data/filecache/3b/tn_zoom_obrazek_105.jpg" || set /a CHYBY+=1
echo [142/174] _zdroje\reference\obcanska\vos-sps-rychnov-01.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\obcanska\vos-sps-rychnov-01.jpg" "http://prumstavnachod.cz/data/filecache/93/vos_rychnov_n_kn_ucebny.jpg" || set /a CHYBY+=1
echo [143/174] _zdroje\reference\obcanska\skolni-kuchyn-01.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\obcanska\skolni-kuchyn-01.jpg" "http://prumstavnachod.cz/data/filecache/4d/tn_zoom_obrazek_106.jpg" || set /a CHYBY+=1
echo [144/174] _zdroje\reference\obcanska\skolni-kuchyn-02.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\obcanska\skolni-kuchyn-02.jpg" "http://prumstavnachod.cz/data/filecache/fc/tn_zoom_obrazek_107.jpg" || set /a CHYBY+=1
echo [145/174] _zdroje\reference\obcanska\skolni-kuchyn-03.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\obcanska\skolni-kuchyn-03.jpg" "http://prumstavnachod.cz/data/filecache/82/tn_zoom_obrazek_108.jpg" || set /a CHYBY+=1
echo [146/174] _zdroje\reference\obcanska\skolni-kuchyn-04.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\obcanska\skolni-kuchyn-04.jpg" "http://prumstavnachod.cz/data/filecache/46/tn_zoom_obrazek_109.jpg" || set /a CHYBY+=1
echo [147/174] _zdroje\reference\bytova\rd-rtyne-01.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\bytova\rd-rtyne-01.jpg" "http://prumstavnachod.cz/data/filecache/12/tn_zoom_obrazek_112.jpg" || set /a CHYBY+=1
echo [148/174] _zdroje\reference\bytova\rd-rtyne-02.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\bytova\rd-rtyne-02.jpg" "http://prumstavnachod.cz/data/filecache/fe/tn_zoom_obrazek_113.jpg" || set /a CHYBY+=1
echo [149/174] _zdroje\reference\bytova\rd-rtyne-03.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\bytova\rd-rtyne-03.jpg" "http://prumstavnachod.cz/data/filecache/33/tn_zoom_obrazek_114.jpg" || set /a CHYBY+=1
echo [150/174] _zdroje\reference\bytova\rd-rtyne-04.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\bytova\rd-rtyne-04.jpg" "http://prumstavnachod.cz/data/filecache/aa/tn_zoom_obrazek_115.jpg" || set /a CHYBY+=1
echo [151/174] _zdroje\reference\bytova\rd-rtyne-05.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\bytova\rd-rtyne-05.jpg" "http://prumstavnachod.cz/data/filecache/c2/tn_zoom_obrazek_116.jpg" || set /a CHYBY+=1
echo [152/174] _zdroje\reference\bytova\rd-rtyne-06.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\bytova\rd-rtyne-06.jpg" "http://prumstavnachod.cz/data/filecache/7d/tn_zoom_obrazek_117.jpg" || set /a CHYBY+=1
echo [153/174] _zdroje\reference\bytova\rd-rtyne-07.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\bytova\rd-rtyne-07.jpg" "http://prumstavnachod.cz/data/filecache/df/tn_zoom_obrazek_118.jpg" || set /a CHYBY+=1
echo [154/174] _zdroje\reference\bytova\rd-rtyne-08.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\bytova\rd-rtyne-08.jpg" "http://prumstavnachod.cz/data/filecache/f2/tn_zoom_obrazek_119.jpg" || set /a CHYBY+=1
echo [155/174] _zdroje\reference\bytova\rd-rtyne-09.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\bytova\rd-rtyne-09.jpg" "http://prumstavnachod.cz/data/filecache/b7/tn_zoom_obrazek_120.jpg" || set /a CHYBY+=1
echo [156/174] _zdroje\reference\bytova\rd-rtyne-10.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\bytova\rd-rtyne-10.jpg" "http://prumstavnachod.cz/data/filecache/3c/tn_zoom_obrazek_121.jpg" || set /a CHYBY+=1
echo [157/174] _zdroje\reference\bytova\rd-rtyne-11.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\bytova\rd-rtyne-11.jpg" "http://prumstavnachod.cz/data/filecache/79/tn_zoom_obrazek_122.jpg" || set /a CHYBY+=1
echo [158/174] _zdroje\reference\bytova\rd-rtyne-12.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\bytova\rd-rtyne-12.jpg" "http://prumstavnachod.cz/data/filecache/de/tn_zoom_obrazek_123.jpg" || set /a CHYBY+=1
echo [159/174] _zdroje\reference\bytova\rd-rtyne-13.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\bytova\rd-rtyne-13.jpg" "http://prumstavnachod.cz/data/filecache/cd/tn_zoom_obrazek_124.jpg" || set /a CHYBY+=1
echo [160/174] _zdroje\reference\bytova\rd-rtyne-14.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\bytova\rd-rtyne-14.jpg" "http://prumstavnachod.cz/data/filecache/88/tn_zoom_obrazek_125.jpg" || set /a CHYBY+=1
echo [161/174] _zdroje\reference\bytova\rd-rtyne-15.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\bytova\rd-rtyne-15.jpg" "http://prumstavnachod.cz/data/filecache/4c/tn_zoom_obrazek_126.jpg" || set /a CHYBY+=1
echo [162/174] _zdroje\reference\bytova\rd-rtyne-16.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\bytova\rd-rtyne-16.jpg" "http://prumstavnachod.cz/data/filecache/cd/tn_zoom_obrazek_127.jpg" || set /a CHYBY+=1
echo [163/174] _zdroje\reference\bytova\rd-rtyne-17.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\bytova\rd-rtyne-17.jpg" "http://prumstavnachod.cz/data/filecache/6f/tn_zoom_obrazek_128.jpg" || set /a CHYBY+=1
echo [164/174] _zdroje\reference\bytova\bytovky-cerveny-kostelec-01.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\bytova\bytovky-cerveny-kostelec-01.jpg" "http://prumstavnachod.cz/data/filecache/1d/tn_zoom_obrazek_129.jpg" || set /a CHYBY+=1
echo [165/174] _zdroje\reference\bytova\bytovky-cerveny-kostelec-02.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\bytova\bytovky-cerveny-kostelec-02.jpg" "http://prumstavnachod.cz/data/filecache/1b/tn_zoom_obrazek_130.jpg" || set /a CHYBY+=1
echo [166/174] _zdroje\reference\bytova\bytovky-cerveny-kostelec-03.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\bytova\bytovky-cerveny-kostelec-03.jpg" "http://prumstavnachod.cz/data/filecache/92/tn_zoom_obrazek_131.jpg" || set /a CHYBY+=1
echo [167/174] _zdroje\reference\bytova\bytovky-cerveny-kostelec-04.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\bytova\bytovky-cerveny-kostelec-04.jpg" "http://prumstavnachod.cz/data/filecache/dc/tn_zoom_obrazek_132.jpg" || set /a CHYBY+=1
echo [168/174] _zdroje\reference\bytova\bytovky-nove-mesto-01.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\bytova\bytovky-nove-mesto-01.jpg" "http://prumstavnachod.cz/data/filecache/1a/tn_zoom_obrazek_133.jpg" || set /a CHYBY+=1
echo [169/174] _zdroje\reference\bytova\bytovky-nove-mesto-02.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\bytova\bytovky-nove-mesto-02.jpg" "http://prumstavnachod.cz/data/filecache/72/tn_zoom_obrazek_134.jpg" || set /a CHYBY+=1
echo [170/174] _zdroje\reference\bytova\bytovky-nove-mesto-03.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\bytova\bytovky-nove-mesto-03.jpg" "http://prumstavnachod.cz/data/filecache/d8/tn_zoom_obrazek_135.jpg" || set /a CHYBY+=1
echo [171/174] _zdroje\reference\bytova\bytovky-nove-mesto-04.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\bytova\bytovky-nove-mesto-04.jpg" "http://prumstavnachod.cz/data/filecache/0d/tn_zoom_obrazek_136.jpg" || set /a CHYBY+=1
echo [172/174] _zdroje\reference\bytova\nastavba-bytoveho-domu-01.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\bytova\nastavba-bytoveho-domu-01.jpg" "http://prumstavnachod.cz/data/filecache/46/tn_zoom_obrazek_137.jpg" || set /a CHYBY+=1
echo [173/174] _zdroje\reference\bytova\nastavba-bytoveho-domu-02.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\bytova\nastavba-bytoveho-domu-02.jpg" "http://prumstavnachod.cz/data/filecache/c2/tn_zoom_obrazek_138.jpg" || set /a CHYBY+=1
echo [174/174] _zdroje\reference\bytova\nastavba-bytoveho-domu-03.jpg
curl -fsSL --create-dirs --retry 2 -o "_zdroje\reference\bytova\nastavba-bytoveho-domu-03.jpg" "http://prumstavnachod.cz/data/filecache/80/tn_zoom_obrazek_139.jpg" || set /a CHYBY+=1
echo.
if %CHYBY%==0 (
  echo Hotovo! Vsechno je ve slozce _zdroje. Muzes zavrit okno a napsat Claudovi.
) else (
  echo Hotovo, ale %CHYBY% souboru se nepodarilo stahnout. Napis Claudovi.
)
pause
