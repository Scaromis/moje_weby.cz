@echo off
rem ================================================================
rem  Truhlarstvi Nyvlt - stazeni fotek a loga z jejich webu
rem  250 souboru se ulozi do slozky img vedle tohoto souboru.
rem  Obsahuje jen prikazy curl (stahovani z truhlarstvi-nyvlt.cz).
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
echo Stahuji 250 souboru z truhlarstvi-nyvlt.cz ...
echo.
echo [1/250] img\kuchyne\kuchyne_na_miru_1.jpg
curl -fsSL --create-dirs --retry 2 -o "img\kuchyne\kuchyne_na_miru_1.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/3/clim_thumb_xxl_kuchyne_na_miru_1.jpg" || set /a CHYBY+=1
echo [2/250] img\kuchyne\kuchyne_na_miru_2.jpg
curl -fsSL --create-dirs --retry 2 -o "img\kuchyne\kuchyne_na_miru_2.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/3/clim_thumb_xxl_kuchyne_na_miru_2.jpg" || set /a CHYBY+=1
echo [3/250] img\kuchyne\kuchyne_na_miru_3.jpg
curl -fsSL --create-dirs --retry 2 -o "img\kuchyne\kuchyne_na_miru_3.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/3/clim_thumb_xxl_kuchyne_na_miru_3.jpg" || set /a CHYBY+=1
echo [4/250] img\kuchyne\kuchyne_na_miru_4.jpg
curl -fsSL --create-dirs --retry 2 -o "img\kuchyne\kuchyne_na_miru_4.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/3/clim_thumb_xxl_kuchyne_na_miru_4.jpg" || set /a CHYBY+=1
echo [5/250] img\kuchyne\kuchyne_na_miru_5.jpg
curl -fsSL --create-dirs --retry 2 -o "img\kuchyne\kuchyne_na_miru_5.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/3/clim_thumb_xxl_kuchyne_na_miru_5.jpg" || set /a CHYBY+=1
echo [6/250] img\kuchyne\kuchyne_na_miru_6.jpg
curl -fsSL --create-dirs --retry 2 -o "img\kuchyne\kuchyne_na_miru_6.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/3/clim_thumb_xxl_kuchyne_na_miru_6.jpg" || set /a CHYBY+=1
echo [7/250] img\kuchyne\kuchyne_na_miru_7.jpg
curl -fsSL --create-dirs --retry 2 -o "img\kuchyne\kuchyne_na_miru_7.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/3/clim_thumb_xxl_kuchyne_na_miru_7.jpg" || set /a CHYBY+=1
echo [8/250] img\kuchyne\kuchyne_na_miru_8.jpg
curl -fsSL --create-dirs --retry 2 -o "img\kuchyne\kuchyne_na_miru_8.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/3/clim_thumb_xxl_kuchyne_na_miru_8.jpg" || set /a CHYBY+=1
echo [9/250] img\kuchyne\kuchyne_na_miru_9.jpg
curl -fsSL --create-dirs --retry 2 -o "img\kuchyne\kuchyne_na_miru_9.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/3/clim_thumb_xxl_kuchyne_na_miru_9.jpg" || set /a CHYBY+=1
echo [10/250] img\kuchyne\kuchyne_na_miru_10.jpg
curl -fsSL --create-dirs --retry 2 -o "img\kuchyne\kuchyne_na_miru_10.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/3/clim_thumb_xxl_kuchyne_na_miru_10.jpg" || set /a CHYBY+=1
echo [11/250] img\kuchyne\kuchyne_na_miru_11.jpg
curl -fsSL --create-dirs --retry 2 -o "img\kuchyne\kuchyne_na_miru_11.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/3/clim_thumb_xxl_kuchyne_na_miru_11.jpg" || set /a CHYBY+=1
echo [12/250] img\kuchyne\kuchyne_na_miru_12.jpg
curl -fsSL --create-dirs --retry 2 -o "img\kuchyne\kuchyne_na_miru_12.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/3/clim_thumb_xxl_kuchyne_na_miru_12.jpg" || set /a CHYBY+=1
echo [13/250] img\kuchyne\kuchyne_na_miru_13.jpg
curl -fsSL --create-dirs --retry 2 -o "img\kuchyne\kuchyne_na_miru_13.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/3/clim_thumb_xxl_kuchyne_na_miru_13.jpg" || set /a CHYBY+=1
echo [14/250] img\kuchyne\kuchyne_na_miru_14.jpg
curl -fsSL --create-dirs --retry 2 -o "img\kuchyne\kuchyne_na_miru_14.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/3/clim_thumb_xxl_kuchyne_na_miru_14.jpg" || set /a CHYBY+=1
echo [15/250] img\kuchyne\kuchyne_na_miru_15.jpg
curl -fsSL --create-dirs --retry 2 -o "img\kuchyne\kuchyne_na_miru_15.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/3/clim_thumb_xxl_kuchyne_na_miru_15.jpg" || set /a CHYBY+=1
echo [16/250] img\kuchyne\kuchyne_na_miru_16.jpg
curl -fsSL --create-dirs --retry 2 -o "img\kuchyne\kuchyne_na_miru_16.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/3/clim_thumb_xxl_kuchyne_na_miru_16.jpg" || set /a CHYBY+=1
echo [17/250] img\kuchyne\kuchyne_na_miru_17.jpg
curl -fsSL --create-dirs --retry 2 -o "img\kuchyne\kuchyne_na_miru_17.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/3/clim_thumb_xxl_kuchyne_na_miru_17.jpg" || set /a CHYBY+=1
echo [18/250] img\kuchyne\kuchyne_na_miru_18.jpg
curl -fsSL --create-dirs --retry 2 -o "img\kuchyne\kuchyne_na_miru_18.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/3/clim_thumb_xxl_kuchyne_na_miru_18.jpg" || set /a CHYBY+=1
echo [19/250] img\kuchyne\kuchyne_na_miru_19.jpg
curl -fsSL --create-dirs --retry 2 -o "img\kuchyne\kuchyne_na_miru_19.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/3/clim_thumb_xxl_kuchyne_na_miru_19.jpg" || set /a CHYBY+=1
echo [20/250] img\kuchyne\kuchyne_na_miru_20.jpg
curl -fsSL --create-dirs --retry 2 -o "img\kuchyne\kuchyne_na_miru_20.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/3/clim_thumb_xxl_kuchyne_na_miru_20.jpg" || set /a CHYBY+=1
echo [21/250] img\kuchyne\kuchyne_na_miru_21.jpg
curl -fsSL --create-dirs --retry 2 -o "img\kuchyne\kuchyne_na_miru_21.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/3/clim_thumb_xxl_kuchyne_na_miru_21.jpg" || set /a CHYBY+=1
echo [22/250] img\kuchyne\kuchyne_na_miru_22.jpg
curl -fsSL --create-dirs --retry 2 -o "img\kuchyne\kuchyne_na_miru_22.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/3/clim_thumb_xxl_kuchyne_na_miru_22.jpg" || set /a CHYBY+=1
echo [23/250] img\kuchyne\kuchyne_na_miru_23.jpg
curl -fsSL --create-dirs --retry 2 -o "img\kuchyne\kuchyne_na_miru_23.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/3/clim_thumb_xxl_kuchyne_na_miru_23.jpg" || set /a CHYBY+=1
echo [24/250] img\kuchyne\kuchyne_na_miru_24.jpg
curl -fsSL --create-dirs --retry 2 -o "img\kuchyne\kuchyne_na_miru_24.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/3/clim_thumb_xxl_kuchyne_na_miru_24.jpg" || set /a CHYBY+=1
echo [25/250] img\kuchyne\kuchyne_na_miru_25.jpg
curl -fsSL --create-dirs --retry 2 -o "img\kuchyne\kuchyne_na_miru_25.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/3/clim_thumb_xxl_kuchyne_na_miru_25.jpg" || set /a CHYBY+=1
echo [26/250] img\kuchyne\kuchyne_na_miru_26.jpg
curl -fsSL --create-dirs --retry 2 -o "img\kuchyne\kuchyne_na_miru_26.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/3/clim_thumb_xxl_kuchyne_na_miru_26.jpg" || set /a CHYBY+=1
echo [27/250] img\kuchyne\kuchyne_na_miru_27.jpg
curl -fsSL --create-dirs --retry 2 -o "img\kuchyne\kuchyne_na_miru_27.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/3/clim_thumb_xxl_kuchyne_na_miru_27.jpg" || set /a CHYBY+=1
echo [28/250] img\dvere\interierove_dvere_1.jpg
curl -fsSL --create-dirs --retry 2 -o "img\dvere\interierove_dvere_1.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/1/clim_thumb_xxl_interierove_dvere_1.jpg" || set /a CHYBY+=1
echo [29/250] img\dvere\interierove_dvere_2.jpg
curl -fsSL --create-dirs --retry 2 -o "img\dvere\interierove_dvere_2.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/1/clim_thumb_xxl_interierove_dvere_2.jpg" || set /a CHYBY+=1
echo [30/250] img\dvere\interierove_dvere_3.jpg
curl -fsSL --create-dirs --retry 2 -o "img\dvere\interierove_dvere_3.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/1/clim_thumb_xxl_interierove_dvere_3.jpg" || set /a CHYBY+=1
echo [31/250] img\dvere\interierove_dvere_4.jpg
curl -fsSL --create-dirs --retry 2 -o "img\dvere\interierove_dvere_4.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/1/clim_thumb_xxl_interierove_dvere_4.jpg" || set /a CHYBY+=1
echo [32/250] img\dvere\interierove_dvere_5.jpg
curl -fsSL --create-dirs --retry 2 -o "img\dvere\interierove_dvere_5.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/1/clim_thumb_xxl_interierove_dvere_5.jpg" || set /a CHYBY+=1
echo [33/250] img\dvere\interierove_dvere_6.jpg
curl -fsSL --create-dirs --retry 2 -o "img\dvere\interierove_dvere_6.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/1/clim_thumb_xxl_interierove_dvere_6.jpg" || set /a CHYBY+=1
echo [34/250] img\dvere\interierove_dvere_7.jpg
curl -fsSL --create-dirs --retry 2 -o "img\dvere\interierove_dvere_7.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/1/clim_thumb_xxl_interierove_dvere_7.jpg" || set /a CHYBY+=1
echo [35/250] img\dvere\interierove_dvere_8.jpg
curl -fsSL --create-dirs --retry 2 -o "img\dvere\interierove_dvere_8.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/1/clim_thumb_xxl_interierove_dvere_8.jpg" || set /a CHYBY+=1
echo [36/250] img\dvere\interierove_dvere_9.jpg
curl -fsSL --create-dirs --retry 2 -o "img\dvere\interierove_dvere_9.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/1/clim_thumb_xxl_interierove_dvere_9.jpg" || set /a CHYBY+=1
echo [37/250] img\dvere\interierove_dvere_10.jpg
curl -fsSL --create-dirs --retry 2 -o "img\dvere\interierove_dvere_10.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/1/clim_thumb_xxl_interierove_dvere_10.jpg" || set /a CHYBY+=1
echo [38/250] img\dvere\interierove_dvere_11.jpg
curl -fsSL --create-dirs --retry 2 -o "img\dvere\interierove_dvere_11.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/1/clim_thumb_xxl_interierove_dvere_11.jpg" || set /a CHYBY+=1
echo [39/250] img\dvere\interierove_dvere_12.jpg
curl -fsSL --create-dirs --retry 2 -o "img\dvere\interierove_dvere_12.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/1/clim_thumb_xxl_interierove_dvere_12.jpg" || set /a CHYBY+=1
echo [40/250] img\dvere\interierove_dvere_13.jpg
curl -fsSL --create-dirs --retry 2 -o "img\dvere\interierove_dvere_13.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/1/clim_thumb_xxl_interierove_dvere_13.jpg" || set /a CHYBY+=1
echo [41/250] img\dvere\interierove_dvere_14.jpg
curl -fsSL --create-dirs --retry 2 -o "img\dvere\interierove_dvere_14.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/1/clim_thumb_xxl_interierove_dvere_14.jpg" || set /a CHYBY+=1
echo [42/250] img\dvere\interierove_dvere_15.jpg
curl -fsSL --create-dirs --retry 2 -o "img\dvere\interierove_dvere_15.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/1/clim_thumb_xxl_interierove_dvere_15.jpg" || set /a CHYBY+=1
echo [43/250] img\dvere\interierove_dvere_16.jpg
curl -fsSL --create-dirs --retry 2 -o "img\dvere\interierove_dvere_16.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/1/clim_thumb_xxl_interierove_dvere_16.jpg" || set /a CHYBY+=1
echo [44/250] img\dvere\interierove_dvere_17.jpg
curl -fsSL --create-dirs --retry 2 -o "img\dvere\interierove_dvere_17.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/1/clim_thumb_xxl_interierove_dvere_17.jpg" || set /a CHYBY+=1
echo [45/250] img\dvere\interierove_dvere_18.jpg
curl -fsSL --create-dirs --retry 2 -o "img\dvere\interierove_dvere_18.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/1/clim_thumb_xxl_interierove_dvere_18.jpg" || set /a CHYBY+=1
echo [46/250] img\dvere\interierove_dvere_19.jpg
curl -fsSL --create-dirs --retry 2 -o "img\dvere\interierove_dvere_19.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/1/clim_thumb_xxl_interierove_dvere_19.jpg" || set /a CHYBY+=1
echo [47/250] img\dvere\interierove_dvere_20.jpg
curl -fsSL --create-dirs --retry 2 -o "img\dvere\interierove_dvere_20.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/1/clim_thumb_xxl_interierove_dvere_20.jpg" || set /a CHYBY+=1
echo [48/250] img\dvere\interierove_dvere_21.jpg
curl -fsSL --create-dirs --retry 2 -o "img\dvere\interierove_dvere_21.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/1/clim_thumb_xxl_interierove_dvere_21.jpg" || set /a CHYBY+=1
echo [49/250] img\dvere\interierove_dvere_22.jpg
curl -fsSL --create-dirs --retry 2 -o "img\dvere\interierove_dvere_22.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/1/clim_thumb_xxl_interierove_dvere_22.jpg" || set /a CHYBY+=1
echo [50/250] img\dvere\interierove_dvere_23.jpg
curl -fsSL --create-dirs --retry 2 -o "img\dvere\interierove_dvere_23.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/1/clim_thumb_xxl_interierove_dvere_23.jpg" || set /a CHYBY+=1
echo [51/250] img\dvere\interierove_dvere_24.jpg
curl -fsSL --create-dirs --retry 2 -o "img\dvere\interierove_dvere_24.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/1/clim_thumb_xxl_interierove_dvere_24.jpg" || set /a CHYBY+=1
echo [52/250] img\dvere\interierove_dvere_25.jpg
curl -fsSL --create-dirs --retry 2 -o "img\dvere\interierove_dvere_25.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/1/clim_thumb_xxl_interierove_dvere_25.jpg" || set /a CHYBY+=1
echo [53/250] img\dvere\interierove_dvere_26.jpg
curl -fsSL --create-dirs --retry 2 -o "img\dvere\interierove_dvere_26.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/1/clim_thumb_xxl_interierove_dvere_26.jpg" || set /a CHYBY+=1
echo [54/250] img\dvere\interierove_dvere_27.jpg
curl -fsSL --create-dirs --retry 2 -o "img\dvere\interierove_dvere_27.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/1/clim_thumb_xxl_interierove_dvere_27.jpg" || set /a CHYBY+=1
echo [55/250] img\dvere\interierove_dvere_28.jpg
curl -fsSL --create-dirs --retry 2 -o "img\dvere\interierove_dvere_28.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/1/clim_thumb_xxl_interierove_dvere_28.jpg" || set /a CHYBY+=1
echo [56/250] img\dvere\interierove_dvere_29.jpg
curl -fsSL --create-dirs --retry 2 -o "img\dvere\interierove_dvere_29.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/1/clim_thumb_xxl_interierove_dvere_29.jpg" || set /a CHYBY+=1
echo [57/250] img\dvere\interierove_dvere_30.jpg
curl -fsSL --create-dirs --retry 2 -o "img\dvere\interierove_dvere_30.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/1/clim_thumb_xxl_interierove_dvere_30.jpg" || set /a CHYBY+=1
echo [58/250] img\dvere\interierove_dvere_31.jpg
curl -fsSL --create-dirs --retry 2 -o "img\dvere\interierove_dvere_31.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/1/clim_thumb_xxl_interierove_dvere_31.jpg" || set /a CHYBY+=1
echo [59/250] img\dvere\interierove_dvere_32.jpg
curl -fsSL --create-dirs --retry 2 -o "img\dvere\interierove_dvere_32.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/1/clim_thumb_xxl_interierove_dvere_32.jpg" || set /a CHYBY+=1
echo [60/250] img\dvere\interierove_dvere_33.jpg
curl -fsSL --create-dirs --retry 2 -o "img\dvere\interierove_dvere_33.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/1/clim_thumb_xxl_interierove_dvere_33.jpg" || set /a CHYBY+=1
echo [61/250] img\dvere\interierove_dvere_34.jpg
curl -fsSL --create-dirs --retry 2 -o "img\dvere\interierove_dvere_34.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/1/clim_thumb_xxl_interierove_dvere_34.jpg" || set /a CHYBY+=1
echo [62/250] img\dvere\interierove_dvere_35.jpg
curl -fsSL --create-dirs --retry 2 -o "img\dvere\interierove_dvere_35.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/1/clim_thumb_xxl_interierove_dvere_35.jpg" || set /a CHYBY+=1
echo [63/250] img\dvere\interierove_dvere_36.jpg
curl -fsSL --create-dirs --retry 2 -o "img\dvere\interierove_dvere_36.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/1/clim_thumb_xxl_interierove_dvere_36.jpg" || set /a CHYBY+=1
echo [64/250] img\dvere\interierove_dvere_37.jpg
curl -fsSL --create-dirs --retry 2 -o "img\dvere\interierove_dvere_37.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/1/clim_thumb_xxl_interierove_dvere_37.jpg" || set /a CHYBY+=1
echo [65/250] img\dvere\interierove_dvere_38.jpg
curl -fsSL --create-dirs --retry 2 -o "img\dvere\interierove_dvere_38.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/1/clim_thumb_xxl_interierove_dvere_38.jpg" || set /a CHYBY+=1
echo [66/250] img\dvere\interierove_dvere_39.jpg
curl -fsSL --create-dirs --retry 2 -o "img\dvere\interierove_dvere_39.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/1/clim_thumb_xxl_interierove_dvere_39.jpg" || set /a CHYBY+=1
echo [67/250] img\dvere\interierove_dvere_40.jpg
curl -fsSL --create-dirs --retry 2 -o "img\dvere\interierove_dvere_40.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/1/clim_thumb_xxl_interierove_dvere_40.jpg" || set /a CHYBY+=1
echo [68/250] img\dvere\interierove_dvere_41.jpg
curl -fsSL --create-dirs --retry 2 -o "img\dvere\interierove_dvere_41.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/1/clim_thumb_xxl_interierove_dvere_41.jpg" || set /a CHYBY+=1
echo [69/250] img\dvere\interierove_dvere_42.jpg
curl -fsSL --create-dirs --retry 2 -o "img\dvere\interierove_dvere_42.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/1/clim_thumb_xxl_interierove_dvere_42.jpg" || set /a CHYBY+=1
echo [70/250] img\dvere\interierove_dvere_43.jpg
curl -fsSL --create-dirs --retry 2 -o "img\dvere\interierove_dvere_43.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/1/clim_thumb_xxl_interierove_dvere_43.jpg" || set /a CHYBY+=1
echo [71/250] img\dvere\interierove_dvere_44.jpg
curl -fsSL --create-dirs --retry 2 -o "img\dvere\interierove_dvere_44.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/1/clim_thumb_xxl_interierove_dvere_44.jpg" || set /a CHYBY+=1
echo [72/250] img\dvere\interierove_dvere_45.jpg
curl -fsSL --create-dirs --retry 2 -o "img\dvere\interierove_dvere_45.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/1/clim_thumb_xxl_interierove_dvere_45.jpg" || set /a CHYBY+=1
echo [73/250] img\dvere\interierove_dvere_46.jpg
curl -fsSL --create-dirs --retry 2 -o "img\dvere\interierove_dvere_46.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/1/clim_thumb_xxl_interierove_dvere_46.jpg" || set /a CHYBY+=1
echo [74/250] img\dvere\interierove_dvere_47.jpg
curl -fsSL --create-dirs --retry 2 -o "img\dvere\interierove_dvere_47.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/1/clim_thumb_xxl_interierove_dvere_47.jpg" || set /a CHYBY+=1
echo [75/250] img\skrine\vestavene_skrine_1.jpg
curl -fsSL --create-dirs --retry 2 -o "img\skrine\vestavene_skrine_1.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/4/clim_thumb_xxl_vestavene_skrine_1.jpg" || set /a CHYBY+=1
echo [76/250] img\skrine\vestavene_skrine_2.jpg
curl -fsSL --create-dirs --retry 2 -o "img\skrine\vestavene_skrine_2.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/4/clim_thumb_xxl_vestavene_skrine_2.jpg" || set /a CHYBY+=1
echo [77/250] img\skrine\vestavene_skrine_3.jpg
curl -fsSL --create-dirs --retry 2 -o "img\skrine\vestavene_skrine_3.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/4/clim_thumb_xxl_vestavene_skrine_3.jpg" || set /a CHYBY+=1
echo [78/250] img\skrine\vestavene_skrine_4.jpg
curl -fsSL --create-dirs --retry 2 -o "img\skrine\vestavene_skrine_4.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/4/clim_thumb_xxl_vestavene_skrine_4.jpg" || set /a CHYBY+=1
echo [79/250] img\skrine\vestavene_skrine_5.jpg
curl -fsSL --create-dirs --retry 2 -o "img\skrine\vestavene_skrine_5.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/4/clim_thumb_xxl_vestavene_skrine_5.jpg" || set /a CHYBY+=1
echo [80/250] img\skrine\vestavene_skrine_6.jpg
curl -fsSL --create-dirs --retry 2 -o "img\skrine\vestavene_skrine_6.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/4/clim_thumb_xxl_vestavene_skrine_6.jpg" || set /a CHYBY+=1
echo [81/250] img\skrine\vestavene_skrine_7.jpg
curl -fsSL --create-dirs --retry 2 -o "img\skrine\vestavene_skrine_7.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/4/clim_thumb_xxl_vestavene_skrine_7.jpg" || set /a CHYBY+=1
echo [82/250] img\skrine\vestavene_skrine_8.jpg
curl -fsSL --create-dirs --retry 2 -o "img\skrine\vestavene_skrine_8.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/4/clim_thumb_xxl_vestavene_skrine_8.jpg" || set /a CHYBY+=1
echo [83/250] img\skrine\vestavene_skrine_9.jpg
curl -fsSL --create-dirs --retry 2 -o "img\skrine\vestavene_skrine_9.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/4/clim_thumb_xxl_vestavene_skrine_9.jpg" || set /a CHYBY+=1
echo [84/250] img\skrine\vestavene_skrine_10.jpg
curl -fsSL --create-dirs --retry 2 -o "img\skrine\vestavene_skrine_10.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/4/clim_thumb_xxl_vestavene_skrine_10.jpg" || set /a CHYBY+=1
echo [85/250] img\skrine\vestavene_skrine_11.jpg
curl -fsSL --create-dirs --retry 2 -o "img\skrine\vestavene_skrine_11.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/4/clim_thumb_xxl_vestavene_skrine_11.jpg" || set /a CHYBY+=1
echo [86/250] img\skrine\vestavene_skrine_12.jpg
curl -fsSL --create-dirs --retry 2 -o "img\skrine\vestavene_skrine_12.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/4/clim_thumb_xxl_vestavene_skrine_12.jpg" || set /a CHYBY+=1
echo [87/250] img\skrine\vestavene_skrine_13.jpg
curl -fsSL --create-dirs --retry 2 -o "img\skrine\vestavene_skrine_13.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/4/clim_thumb_xxl_vestavene_skrine_13.jpg" || set /a CHYBY+=1
echo [88/250] img\skrine\vestavene_skrine_14.jpg
curl -fsSL --create-dirs --retry 2 -o "img\skrine\vestavene_skrine_14.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/4/clim_thumb_xxl_vestavene_skrine_14.jpg" || set /a CHYBY+=1
echo [89/250] img\skrine\vestavene_skrine_15.jpg
curl -fsSL --create-dirs --retry 2 -o "img\skrine\vestavene_skrine_15.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/4/clim_thumb_xxl_vestavene_skrine_15.jpg" || set /a CHYBY+=1
echo [90/250] img\skrine\vestavene_skrine_16.jpg
curl -fsSL --create-dirs --retry 2 -o "img\skrine\vestavene_skrine_16.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/4/clim_thumb_xxl_vestavene_skrine_16.jpg" || set /a CHYBY+=1
echo [91/250] img\skrine\vestavene_skrine_17.jpg
curl -fsSL --create-dirs --retry 2 -o "img\skrine\vestavene_skrine_17.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/4/clim_thumb_xxl_vestavene_skrine_17.jpg" || set /a CHYBY+=1
echo [92/250] img\skrine\vestavene_skrine_18.jpg
curl -fsSL --create-dirs --retry 2 -o "img\skrine\vestavene_skrine_18.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/4/clim_thumb_xxl_vestavene_skrine_18.jpg" || set /a CHYBY+=1
echo [93/250] img\skrine\vestavene_skrine_19.jpg
curl -fsSL --create-dirs --retry 2 -o "img\skrine\vestavene_skrine_19.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/4/clim_thumb_xxl_vestavene_skrine_19.jpg" || set /a CHYBY+=1
echo [94/250] img\skrine\vestavene_skrine_20.jpg
curl -fsSL --create-dirs --retry 2 -o "img\skrine\vestavene_skrine_20.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/4/clim_thumb_xxl_vestavene_skrine_20.jpg" || set /a CHYBY+=1
echo [95/250] img\skrine\vestavene_skrine_21.jpg
curl -fsSL --create-dirs --retry 2 -o "img\skrine\vestavene_skrine_21.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/4/clim_thumb_xxl_vestavene_skrine_21.jpg" || set /a CHYBY+=1
echo [96/250] img\skrine\vestavene_skrine_22.jpg
curl -fsSL --create-dirs --retry 2 -o "img\skrine\vestavene_skrine_22.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/4/clim_thumb_xxl_vestavene_skrine_22.jpg" || set /a CHYBY+=1
echo [97/250] img\skrine\vestavene_skrine_23.jpg
curl -fsSL --create-dirs --retry 2 -o "img\skrine\vestavene_skrine_23.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/4/clim_thumb_xxl_vestavene_skrine_23.jpg" || set /a CHYBY+=1
echo [98/250] img\skrine\vestavene_skrine_24.jpg
curl -fsSL --create-dirs --retry 2 -o "img\skrine\vestavene_skrine_24.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/4/clim_thumb_xxl_vestavene_skrine_24.jpg" || set /a CHYBY+=1
echo [99/250] img\skrine\vestavene_skrine_25.jpg
curl -fsSL --create-dirs --retry 2 -o "img\skrine\vestavene_skrine_25.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/4/clim_thumb_xxl_vestavene_skrine_25.jpg" || set /a CHYBY+=1
echo [100/250] img\skrine\vestavene_skrine_26.jpg
curl -fsSL --create-dirs --retry 2 -o "img\skrine\vestavene_skrine_26.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/4/clim_thumb_xxl_vestavene_skrine_26.jpg" || set /a CHYBY+=1
echo [101/250] img\skrine\vestavene_skrine_27.jpg
curl -fsSL --create-dirs --retry 2 -o "img\skrine\vestavene_skrine_27.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/4/clim_thumb_xxl_vestavene_skrine_27.jpg" || set /a CHYBY+=1
echo [102/250] img\skrine\vestavene_skrine_28.jpg
curl -fsSL --create-dirs --retry 2 -o "img\skrine\vestavene_skrine_28.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/4/clim_thumb_xxl_vestavene_skrine_28.jpg" || set /a CHYBY+=1
echo [103/250] img\skrine\vestavene_skrine_29.jpg
curl -fsSL --create-dirs --retry 2 -o "img\skrine\vestavene_skrine_29.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/4/clim_thumb_xxl_vestavene_skrine_29.jpg" || set /a CHYBY+=1
echo [104/250] img\skrine\vestavene_skrine_30.jpg
curl -fsSL --create-dirs --retry 2 -o "img\skrine\vestavene_skrine_30.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/4/clim_thumb_xxl_vestavene_skrine_30.jpg" || set /a CHYBY+=1
echo [105/250] img\skrine\vestavene_skrine_31.jpg
curl -fsSL --create-dirs --retry 2 -o "img\skrine\vestavene_skrine_31.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/4/clim_thumb_xxl_vestavene_skrine_31.jpg" || set /a CHYBY+=1
echo [106/250] img\skrine\vestavene_skrine_32.jpg
curl -fsSL --create-dirs --retry 2 -o "img\skrine\vestavene_skrine_32.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/4/clim_thumb_xxl_vestavene_skrine_32.jpg" || set /a CHYBY+=1
echo [107/250] img\skrine\vestavene_skrine_33.jpg
curl -fsSL --create-dirs --retry 2 -o "img\skrine\vestavene_skrine_33.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/4/clim_thumb_xxl_vestavene_skrine_33.jpg" || set /a CHYBY+=1
echo [108/250] img\skrine\vestavene_skrine_34.jpg
curl -fsSL --create-dirs --retry 2 -o "img\skrine\vestavene_skrine_34.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/4/clim_thumb_xxl_vestavene_skrine_34.jpg" || set /a CHYBY+=1
echo [109/250] img\skrine\vestavene_skrine_35.jpg
curl -fsSL --create-dirs --retry 2 -o "img\skrine\vestavene_skrine_35.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/4/clim_thumb_xxl_vestavene_skrine_35.jpg" || set /a CHYBY+=1
echo [110/250] img\skrine\vestavene_skrine_36.jpg
curl -fsSL --create-dirs --retry 2 -o "img\skrine\vestavene_skrine_36.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/4/clim_thumb_xxl_vestavene_skrine_36.jpg" || set /a CHYBY+=1
echo [111/250] img\skrine\vestavene_skrine_37.jpg
curl -fsSL --create-dirs --retry 2 -o "img\skrine\vestavene_skrine_37.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/4/clim_thumb_xxl_vestavene_skrine_37.jpg" || set /a CHYBY+=1
echo [112/250] img\skrine\vestavene_skrine_38.jpg
curl -fsSL --create-dirs --retry 2 -o "img\skrine\vestavene_skrine_38.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/4/clim_thumb_xxl_vestavene_skrine_38.jpg" || set /a CHYBY+=1
echo [113/250] img\skrine\vestavene_skrine_39.jpg
curl -fsSL --create-dirs --retry 2 -o "img\skrine\vestavene_skrine_39.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/4/clim_thumb_xxl_vestavene_skrine_39.jpg" || set /a CHYBY+=1
echo [114/250] img\skrine\vestavene_skrine_40.jpg
curl -fsSL --create-dirs --retry 2 -o "img\skrine\vestavene_skrine_40.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/4/clim_thumb_xxl_vestavene_skrine_40.jpg" || set /a CHYBY+=1
echo [115/250] img\skrine\vestavene_skrine_41.jpg
curl -fsSL --create-dirs --retry 2 -o "img\skrine\vestavene_skrine_41.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/4/clim_thumb_xxl_vestavene_skrine_41.jpg" || set /a CHYBY+=1
echo [116/250] img\skrine\vestavene_skrine_42.jpg
curl -fsSL --create-dirs --retry 2 -o "img\skrine\vestavene_skrine_42.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/4/clim_thumb_xxl_vestavene_skrine_42.jpg" || set /a CHYBY+=1
echo [117/250] img\skrine\vestavene_skrine_43.jpg
curl -fsSL --create-dirs --retry 2 -o "img\skrine\vestavene_skrine_43.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/4/clim_thumb_xxl_vestavene_skrine_43.jpg" || set /a CHYBY+=1
echo [118/250] img\skrine\vestavene_skrine_44.jpg
curl -fsSL --create-dirs --retry 2 -o "img\skrine\vestavene_skrine_44.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/4/clim_thumb_xxl_vestavene_skrine_44.jpg" || set /a CHYBY+=1
echo [119/250] img\skrine\vestavene_skrine_45.jpg
curl -fsSL --create-dirs --retry 2 -o "img\skrine\vestavene_skrine_45.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/4/clim_thumb_xxl_vestavene_skrine_45.jpg" || set /a CHYBY+=1
echo [120/250] img\skrine\vestavene_skrine_46.jpg
curl -fsSL --create-dirs --retry 2 -o "img\skrine\vestavene_skrine_46.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/4/clim_thumb_xxl_vestavene_skrine_46.jpg" || set /a CHYBY+=1
echo [121/250] img\skrine\vestavene_skrine_47.jpg
curl -fsSL --create-dirs --retry 2 -o "img\skrine\vestavene_skrine_47.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/4/clim_thumb_xxl_vestavene_skrine_47.jpg" || set /a CHYBY+=1
echo [122/250] img\skrine\vestavene_skrine_48.jpg
curl -fsSL --create-dirs --retry 2 -o "img\skrine\vestavene_skrine_48.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/4/clim_thumb_xxl_vestavene_skrine_48.jpg" || set /a CHYBY+=1
echo [123/250] img\skrine\vestavene_skrine_49.jpg
curl -fsSL --create-dirs --retry 2 -o "img\skrine\vestavene_skrine_49.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/4/clim_thumb_xxl_vestavene_skrine_49.jpg" || set /a CHYBY+=1
echo [124/250] img\skrine\vestavene_skrine_50.jpg
curl -fsSL --create-dirs --retry 2 -o "img\skrine\vestavene_skrine_50.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/4/clim_thumb_xxl_vestavene_skrine_50.jpg" || set /a CHYBY+=1
echo [125/250] img\schodiste\drevene_schody_1.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_1.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_1.jpg" || set /a CHYBY+=1
echo [126/250] img\schodiste\drevene_schody_2.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_2.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_2.jpg" || set /a CHYBY+=1
echo [127/250] img\schodiste\drevene_schody_3.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_3.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_3.jpg" || set /a CHYBY+=1
echo [128/250] img\schodiste\drevene_schody_4.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_4.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_4.jpg" || set /a CHYBY+=1
echo [129/250] img\schodiste\drevene_schody_5.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_5.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_5.jpg" || set /a CHYBY+=1
echo [130/250] img\schodiste\drevene_schody_6.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_6.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_6.jpg" || set /a CHYBY+=1
echo [131/250] img\schodiste\drevene_schody_7.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_7.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_7.jpg" || set /a CHYBY+=1
echo [132/250] img\schodiste\drevene_schody_8.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_8.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_8.jpg" || set /a CHYBY+=1
echo [133/250] img\schodiste\drevene_schody_9.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_9.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_9.jpg" || set /a CHYBY+=1
echo [134/250] img\schodiste\drevene_schody_10.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_10.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_10.jpg" || set /a CHYBY+=1
echo [135/250] img\schodiste\drevene_schody_11.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_11.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_11.jpg" || set /a CHYBY+=1
echo [136/250] img\schodiste\drevene_schody_12.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_12.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_12.jpg" || set /a CHYBY+=1
echo [137/250] img\schodiste\drevene_schody_13.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_13.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_13.jpg" || set /a CHYBY+=1
echo [138/250] img\schodiste\drevene_schody_14.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_14.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_14.jpg" || set /a CHYBY+=1
echo [139/250] img\schodiste\drevene_schody_15.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_15.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_15.jpg" || set /a CHYBY+=1
echo [140/250] img\schodiste\drevene_schody_16.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_16.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_16.jpg" || set /a CHYBY+=1
echo [141/250] img\schodiste\drevene_schody_17.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_17.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_17.jpg" || set /a CHYBY+=1
echo [142/250] img\schodiste\drevene_schody_18.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_18.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_18.jpg" || set /a CHYBY+=1
echo [143/250] img\schodiste\drevene_schody_19.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_19.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_19.jpg" || set /a CHYBY+=1
echo [144/250] img\schodiste\drevene_schody_20.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_20.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_20.jpg" || set /a CHYBY+=1
echo [145/250] img\schodiste\drevene_schody_21.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_21.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_21.jpg" || set /a CHYBY+=1
echo [146/250] img\schodiste\drevene_schody_22.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_22.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_22.jpg" || set /a CHYBY+=1
echo [147/250] img\schodiste\drevene_schody_23.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_23.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_23.jpg" || set /a CHYBY+=1
echo [148/250] img\schodiste\drevene_schody_24.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_24.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_24.jpg" || set /a CHYBY+=1
echo [149/250] img\schodiste\drevene_schody_25.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_25.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_25.jpg" || set /a CHYBY+=1
echo [150/250] img\schodiste\drevene_schody_26.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_26.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_26.jpg" || set /a CHYBY+=1
echo [151/250] img\schodiste\drevene_schody_27.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_27.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_27.jpg" || set /a CHYBY+=1
echo [152/250] img\schodiste\drevene_schody_28.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_28.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_28.jpg" || set /a CHYBY+=1
echo [153/250] img\schodiste\drevene_schody_29.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_29.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_29.jpg" || set /a CHYBY+=1
echo [154/250] img\schodiste\drevene_schody_30.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_30.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_30.jpg" || set /a CHYBY+=1
echo [155/250] img\schodiste\drevene_schody_31.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_31.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_31.jpg" || set /a CHYBY+=1
echo [156/250] img\schodiste\drevene_schody_32.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_32.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_32.jpg" || set /a CHYBY+=1
echo [157/250] img\schodiste\drevene_schody_33.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_33.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_33.jpg" || set /a CHYBY+=1
echo [158/250] img\schodiste\drevene_schody_34.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_34.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_34.jpg" || set /a CHYBY+=1
echo [159/250] img\schodiste\drevene_schody_35.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_35.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_35.jpg" || set /a CHYBY+=1
echo [160/250] img\schodiste\drevene_schody_36.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_36.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_36.jpg" || set /a CHYBY+=1
echo [161/250] img\schodiste\drevene_schody_37.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_37.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_37.jpg" || set /a CHYBY+=1
echo [162/250] img\schodiste\drevene_schody_38.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_38.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_38.jpg" || set /a CHYBY+=1
echo [163/250] img\schodiste\drevene_schody_39.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_39.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_39.jpg" || set /a CHYBY+=1
echo [164/250] img\schodiste\drevene_schody_40.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_40.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_40.jpg" || set /a CHYBY+=1
echo [165/250] img\schodiste\drevene_schody_41.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_41.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_41.jpg" || set /a CHYBY+=1
echo [166/250] img\schodiste\drevene_schody_42.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_42.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_42.jpg" || set /a CHYBY+=1
echo [167/250] img\schodiste\drevene_schody_43.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_43.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_43.jpg" || set /a CHYBY+=1
echo [168/250] img\schodiste\drevene_schody_44.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_44.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_44.jpg" || set /a CHYBY+=1
echo [169/250] img\schodiste\drevene_schody_45.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_45.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_45.jpg" || set /a CHYBY+=1
echo [170/250] img\schodiste\drevene_schody_46.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_46.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_46.jpg" || set /a CHYBY+=1
echo [171/250] img\schodiste\drevene_schody_47.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_47.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_47.jpg" || set /a CHYBY+=1
echo [172/250] img\schodiste\drevene_schody_48.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_48.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_48.jpg" || set /a CHYBY+=1
echo [173/250] img\schodiste\drevene_schody_49.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_49.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_49.jpg" || set /a CHYBY+=1
echo [174/250] img\schodiste\drevene_schody_50.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_50.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_50.jpg" || set /a CHYBY+=1
echo [175/250] img\schodiste\drevene_schody_51.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_51.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_51.jpg" || set /a CHYBY+=1
echo [176/250] img\schodiste\drevene_schody_52.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_52.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_52.jpg" || set /a CHYBY+=1
echo [177/250] img\schodiste\drevene_schody_53.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_53.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_53.jpg" || set /a CHYBY+=1
echo [178/250] img\schodiste\drevene_schody_54.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_54.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_54.jpg" || set /a CHYBY+=1
echo [179/250] img\schodiste\drevene_schody_55.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_55.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_55.jpg" || set /a CHYBY+=1
echo [180/250] img\schodiste\drevene_schody_56.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_56.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_56.jpg" || set /a CHYBY+=1
echo [181/250] img\schodiste\drevene_schody_57.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_57.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_57.jpg" || set /a CHYBY+=1
echo [182/250] img\schodiste\drevene_schody_58.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_58.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_58.jpg" || set /a CHYBY+=1
echo [183/250] img\schodiste\drevene_schody_59.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_59.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_59.jpg" || set /a CHYBY+=1
echo [184/250] img\schodiste\drevene_schody_60.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_60.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_60.jpg" || set /a CHYBY+=1
echo [185/250] img\schodiste\drevene_schody_61.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_61.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_61.jpg" || set /a CHYBY+=1
echo [186/250] img\schodiste\drevene_schody_62.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_62.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_62.jpg" || set /a CHYBY+=1
echo [187/250] img\schodiste\drevene_schody_63.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_63.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_63.jpg" || set /a CHYBY+=1
echo [188/250] img\schodiste\drevene_schody_64.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_64.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_64.jpg" || set /a CHYBY+=1
echo [189/250] img\schodiste\drevene_schody_65.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_65.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_65.jpg" || set /a CHYBY+=1
echo [190/250] img\schodiste\drevene_schody_66.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_66.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_66.jpg" || set /a CHYBY+=1
echo [191/250] img\schodiste\drevene_schody_67.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_67.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_67.jpg" || set /a CHYBY+=1
echo [192/250] img\schodiste\drevene_schody_68.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_68.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_68.jpg" || set /a CHYBY+=1
echo [193/250] img\schodiste\drevene_schody_69.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_69.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_69.jpg" || set /a CHYBY+=1
echo [194/250] img\schodiste\drevene_schody_70.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_70.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_70.jpg" || set /a CHYBY+=1
echo [195/250] img\schodiste\drevene_schody_71.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_71.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_71.jpg" || set /a CHYBY+=1
echo [196/250] img\schodiste\drevene_schody_72.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_72.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_72.jpg" || set /a CHYBY+=1
echo [197/250] img\schodiste\drevene_schody_73.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_73.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_73.jpg" || set /a CHYBY+=1
echo [198/250] img\schodiste\drevene_schody_74.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_74.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_74.jpg" || set /a CHYBY+=1
echo [199/250] img\schodiste\drevene_schody_75.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_75.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_75.jpg" || set /a CHYBY+=1
echo [200/250] img\schodiste\drevene_schody_76.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_76.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_76.jpg" || set /a CHYBY+=1
echo [201/250] img\schodiste\drevene_schody_77.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_77.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_77.jpg" || set /a CHYBY+=1
echo [202/250] img\schodiste\drevene_schody_78.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_78.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_78.jpg" || set /a CHYBY+=1
echo [203/250] img\schodiste\drevene_schody_79.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_79.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_79.jpg" || set /a CHYBY+=1
echo [204/250] img\schodiste\drevene_schody_80.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_80.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_80.jpg" || set /a CHYBY+=1
echo [205/250] img\schodiste\drevene_schody_81.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_81.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_81.jpg" || set /a CHYBY+=1
echo [206/250] img\schodiste\drevene_schody_82.jpg
curl -fsSL --create-dirs --retry 2 -o "img\schodiste\drevene_schody_82.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/2/clim_thumb_xxl_drevene_schody_82.jpg" || set /a CHYBY+=1
echo [207/250] img\nabytek\detsky_pokoj_1.jpg
curl -fsSL --create-dirs --retry 2 -o "img\nabytek\detsky_pokoj_1.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/5/clim_thumb_xxl_detsky_pokoj_1.jpg" || set /a CHYBY+=1
echo [208/250] img\nabytek\detsky_pokoj_2.jpg
curl -fsSL --create-dirs --retry 2 -o "img\nabytek\detsky_pokoj_2.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/5/clim_thumb_xxl_detsky_pokoj_2.jpg" || set /a CHYBY+=1
echo [209/250] img\nabytek\detsky_pokoj_3.jpg
curl -fsSL --create-dirs --retry 2 -o "img\nabytek\detsky_pokoj_3.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/5/clim_thumb_xxl_detsky_pokoj_3.jpg" || set /a CHYBY+=1
echo [210/250] img\nabytek\detsky_pokoj_4.jpg
curl -fsSL --create-dirs --retry 2 -o "img\nabytek\detsky_pokoj_4.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/5/clim_thumb_xxl_detsky_pokoj_4.jpg" || set /a CHYBY+=1
echo [211/250] img\nabytek\detsky_pokoj_5.jpg
curl -fsSL --create-dirs --retry 2 -o "img\nabytek\detsky_pokoj_5.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/5/clim_thumb_xxl_detsky_pokoj_5.jpg" || set /a CHYBY+=1
echo [212/250] img\nabytek\detsky_pokoj_6.jpg
curl -fsSL --create-dirs --retry 2 -o "img\nabytek\detsky_pokoj_6.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/5/clim_thumb_xxl_detsky_pokoj_6.jpg" || set /a CHYBY+=1
echo [213/250] img\nabytek\detsky_pokoj_7.jpg
curl -fsSL --create-dirs --retry 2 -o "img\nabytek\detsky_pokoj_7.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/5/clim_thumb_xxl_detsky_pokoj_7.jpg" || set /a CHYBY+=1
echo [214/250] img\nabytek\detsky_pokoj_8.jpg
curl -fsSL --create-dirs --retry 2 -o "img\nabytek\detsky_pokoj_8.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/5/clim_thumb_xxl_detsky_pokoj_8.jpg" || set /a CHYBY+=1
echo [215/250] img\nabytek\detsky_pokoj_9.jpg
curl -fsSL --create-dirs --retry 2 -o "img\nabytek\detsky_pokoj_9.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/5/clim_thumb_xxl_detsky_pokoj_9.jpg" || set /a CHYBY+=1
echo [216/250] img\nabytek\detsky_pokoj_10.jpg
curl -fsSL --create-dirs --retry 2 -o "img\nabytek\detsky_pokoj_10.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/5/clim_thumb_xxl_detsky_pokoj_10.jpg" || set /a CHYBY+=1
echo [217/250] img\nabytek\detsky_pokoj_11.jpg
curl -fsSL --create-dirs --retry 2 -o "img\nabytek\detsky_pokoj_11.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/5/clim_thumb_xxl_detsky_pokoj_11.jpg" || set /a CHYBY+=1
echo [218/250] img\nabytek\detsky_pokoj_12.jpg
curl -fsSL --create-dirs --retry 2 -o "img\nabytek\detsky_pokoj_12.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/5/clim_thumb_xxl_detsky_pokoj_12.jpg" || set /a CHYBY+=1
echo [219/250] img\nabytek\detsky_pokoj_13.jpg
curl -fsSL --create-dirs --retry 2 -o "img\nabytek\detsky_pokoj_13.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/5/clim_thumb_xxl_detsky_pokoj_13.jpg" || set /a CHYBY+=1
echo [220/250] img\nabytek\detsky_pokoj_14.jpg
curl -fsSL --create-dirs --retry 2 -o "img\nabytek\detsky_pokoj_14.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/5/clim_thumb_xxl_detsky_pokoj_14.jpg" || set /a CHYBY+=1
echo [221/250] img\nabytek\detsky_pokoj_15.jpg
curl -fsSL --create-dirs --retry 2 -o "img\nabytek\detsky_pokoj_15.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/5/clim_thumb_xxl_detsky_pokoj_15.jpg" || set /a CHYBY+=1
echo [222/250] img\nabytek\detsky_pokoj_16.jpg
curl -fsSL --create-dirs --retry 2 -o "img\nabytek\detsky_pokoj_16.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/5/clim_thumb_xxl_detsky_pokoj_16.jpg" || set /a CHYBY+=1
echo [223/250] img\nabytek\detsky_pokoj_17.jpg
curl -fsSL --create-dirs --retry 2 -o "img\nabytek\detsky_pokoj_17.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/5/clim_thumb_xxl_detsky_pokoj_17.jpg" || set /a CHYBY+=1
echo [224/250] img\nabytek\detsky_pokoj_18.jpg
curl -fsSL --create-dirs --retry 2 -o "img\nabytek\detsky_pokoj_18.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/5/clim_thumb_xxl_detsky_pokoj_18.jpg" || set /a CHYBY+=1
echo [225/250] img\nabytek\detsky_pokoj_19.jpg
curl -fsSL --create-dirs --retry 2 -o "img\nabytek\detsky_pokoj_19.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/5/clim_thumb_xxl_detsky_pokoj_19.jpg" || set /a CHYBY+=1
echo [226/250] img\nabytek\drevena_pergola.jpg
curl -fsSL --create-dirs --retry 2 -o "img\nabytek\drevena_pergola.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/5/clim_thumb_xxl_drevena_pergola.jpg" || set /a CHYBY+=1
echo [227/250] img\nabytek\jidelna_1.jpg
curl -fsSL --create-dirs --retry 2 -o "img\nabytek\jidelna_1.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/5/clim_thumb_xxl_jidelna_1.jpg" || set /a CHYBY+=1
echo [228/250] img\nabytek\jidelna_2.jpg
curl -fsSL --create-dirs --retry 2 -o "img\nabytek\jidelna_2.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/5/clim_thumb_xxl_jidelna_2.jpg" || set /a CHYBY+=1
echo [229/250] img\nabytek\jidelna_3.jpg
curl -fsSL --create-dirs --retry 2 -o "img\nabytek\jidelna_3.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/5/clim_thumb_xxl_jidelna_3.jpg" || set /a CHYBY+=1
echo [230/250] img\nabytek\kancelarsky_nabytek_1.jpg
curl -fsSL --create-dirs --retry 2 -o "img\nabytek\kancelarsky_nabytek_1.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/5/clim_thumb_xxl_kancelarsky_nabytek_1.jpg" || set /a CHYBY+=1
echo [231/250] img\nabytek\kancelarsky_nabytek_2.jpg
curl -fsSL --create-dirs --retry 2 -o "img\nabytek\kancelarsky_nabytek_2.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/5/clim_thumb_xxl_kancelarsky_nabytek_2.jpg" || set /a CHYBY+=1
echo [232/250] img\nabytek\kancelarsky_nabytek_3.jpg
curl -fsSL --create-dirs --retry 2 -o "img\nabytek\kancelarsky_nabytek_3.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/5/clim_thumb_xxl_kancelarsky_nabytek_3.jpg" || set /a CHYBY+=1
echo [233/250] img\nabytek\kancelarsky_nabytek_4.jpg
curl -fsSL --create-dirs --retry 2 -o "img\nabytek\kancelarsky_nabytek_4.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/5/clim_thumb_xxl_kancelarsky_nabytek_4.jpg" || set /a CHYBY+=1
echo [234/250] img\nabytek\koupelnovy_nabytek_1.jpg
curl -fsSL --create-dirs --retry 2 -o "img\nabytek\koupelnovy_nabytek_1.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/5/clim_thumb_xxl_koupelnovy_nabytek_1.jpg" || set /a CHYBY+=1
echo [235/250] img\nabytek\loznice_1.jpg
curl -fsSL --create-dirs --retry 2 -o "img\nabytek\loznice_1.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/5/clim_thumb_xxl_loznice_1.jpg" || set /a CHYBY+=1
echo [236/250] img\nabytek\loznice_2.jpg
curl -fsSL --create-dirs --retry 2 -o "img\nabytek\loznice_2.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/5/clim_thumb_xxl_loznice_2.jpg" || set /a CHYBY+=1
echo [237/250] img\nabytek\loznice_3.jpg
curl -fsSL --create-dirs --retry 2 -o "img\nabytek\loznice_3.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/5/clim_thumb_xxl_loznice_3.jpg" || set /a CHYBY+=1
echo [238/250] img\nabytek\obyvaci_pokoj_1.jpg
curl -fsSL --create-dirs --retry 2 -o "img\nabytek\obyvaci_pokoj_1.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/5/clim_thumb_xxl_obyvaci_pokoj_1.jpg" || set /a CHYBY+=1
echo [239/250] img\nabytek\obyvaci_pokoj_2.jpg
curl -fsSL --create-dirs --retry 2 -o "img\nabytek\obyvaci_pokoj_2.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/5/clim_thumb_xxl_obyvaci_pokoj_2.jpg" || set /a CHYBY+=1
echo [240/250] img\nabytek\obyvaci_pokoj_3.jpg
curl -fsSL --create-dirs --retry 2 -o "img\nabytek\obyvaci_pokoj_3.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/5/clim_thumb_xxl_obyvaci_pokoj_3.jpg" || set /a CHYBY+=1
echo [241/250] img\nabytek\obyvaci_pokoj_4.jpg
curl -fsSL --create-dirs --retry 2 -o "img\nabytek\obyvaci_pokoj_4.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/5/clim_thumb_xxl_obyvaci_pokoj_4.jpg" || set /a CHYBY+=1
echo [242/250] img\nabytek\policovy_regal.jpg
curl -fsSL --create-dirs --retry 2 -o "img\nabytek\policovy_regal.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/5/clim_thumb_xxl_policovy_regal.jpg" || set /a CHYBY+=1
echo [243/250] img\nabytek\skrin_pod_akvarium.jpg
curl -fsSL --create-dirs --retry 2 -o "img\nabytek\skrin_pod_akvarium.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/5/clim_thumb_xxl_skrin_pod_akvarium.jpg" || set /a CHYBY+=1
echo [244/250] img\nabytek\skrin_pod_akvarium_2.jpg
curl -fsSL --create-dirs --retry 2 -o "img\nabytek\skrin_pod_akvarium_2.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/5/clim_thumb_xxl_skrin_pod_akvarium_2.jpg" || set /a CHYBY+=1
echo [245/250] img\nabytek\nabytek_satna_1.jpg
curl -fsSL --create-dirs --retry 2 -o "img\nabytek\nabytek_satna_1.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/5/clim_thumb_xxl_nabytek_satna_1.jpg" || set /a CHYBY+=1
echo [246/250] img\nabytek\skrine_1.jpg
curl -fsSL --create-dirs --retry 2 -o "img\nabytek\skrine_1.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/5/clim_thumb_xxl_skrine_1.jpg" || set /a CHYBY+=1
echo [247/250] img\nabytek\skrine_2.jpg
curl -fsSL --create-dirs --retry 2 -o "img\nabytek\skrine_2.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/fotog/5/clim_thumb_xxl_skrine_2.jpg" || set /a CHYBY+=1
echo [248/250] img\dilna\sirokopasova_bruska_nachod.jpg
curl -fsSL --create-dirs --retry 2 -o "img\dilna\sirokopasova_bruska_nachod.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/upload/sirokopasova_bruska_nachod.jpg" || set /a CHYBY+=1
echo [249/250] img\dilna\formatovaci_pila_nachod.jpg
curl -fsSL --create-dirs --retry 2 -o "img\dilna\formatovaci_pila_nachod.jpg" "https://www.truhlarstvi-nyvlt.cz/pool/vzor/upload/formatovaci_pila_nachod.jpg" || set /a CHYBY+=1
echo [250/250] img\logo-original.png
curl -fsSL --create-dirs --retry 2 -o "img\logo-original.png" "https://www.truhlarstvi-nyvlt.cz/web/vzor/img/logo.png" || set /a CHYBY+=1
echo.
if %CHYBY%==0 (echo Hotovo, vse stazeno.) else (echo Hotovo, ale %CHYBY% souboru se nepodarilo stahnout.)
pause
