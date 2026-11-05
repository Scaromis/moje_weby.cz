@echo off
rem ================================================================
rem  SDK Zeleny - stazeni fotek a obrazku z jejich webu
rem  Fotky se ulozi do img, ostatni obrazky do _zdroje.
rem  Obsahuje jen prikazy curl (stahovani z webu sdkzeleny.cz).
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
echo Stahuji 6 souboru z webu sdkzeleny.cz ...
echo.
echo [1/6] img\foto-1.jpeg
curl -fsSL --create-dirs --retry 2 -o "img\foto-1.jpeg" "https://6ddc97c4ef.clvaw-cdnwnd.com/be2e83789f25bfdcbdc3aab39f8af1f4/200000061-3b6a83b6ab/1000005938.jpeg?ph=6ddc97c4ef" || set /a CHYBY+=1
echo [2/6] img\foto-2.jpeg
curl -fsSL --create-dirs --retry 2 -o "img\foto-2.jpeg" "https://6ddc97c4ef.clvaw-cdnwnd.com/be2e83789f25bfdcbdc3aab39f8af1f4/200000063-7e33c7e33e/1000005956.jpeg?ph=6ddc97c4ef" || set /a CHYBY+=1
echo [3/6] _zdroje\obrazek-hlavicka-1.png
curl -fsSL --create-dirs --retry 2 -o "_zdroje\obrazek-hlavicka-1.png" "https://6ddc97c4ef.clvaw-cdnwnd.com/be2e83789f25bfdcbdc3aab39f8af1f4/200000085-c8052c8054/image-crop-200000069-1.png?ph=6ddc97c4ef" || set /a CHYBY+=1
echo [4/6] _zdroje\obrazek-hlavicka-2.png
curl -fsSL --create-dirs --retry 2 -o "_zdroje\obrazek-hlavicka-2.png" "https://6ddc97c4ef.clvaw-cdnwnd.com/be2e83789f25bfdcbdc3aab39f8af1f4/200000075-194381943b/1000007739.png?ph=6ddc97c4ef" || set /a CHYBY+=1
echo [5/6] _zdroje\obrazek-uvod.png
curl -fsSL --create-dirs --retry 2 -o "_zdroje\obrazek-uvod.png" "https://6ddc97c4ef.clvaw-cdnwnd.com/be2e83789f25bfdcbdc3aab39f8af1f4/200000081-a7156a7158/1000007754.png?ph=6ddc97c4ef" || set /a CHYBY+=1
echo [6/6] _zdroje\obrazek-kontakt.png
curl -fsSL --create-dirs --retry 2 -o "_zdroje\obrazek-kontakt.png" "https://6ddc97c4ef.clvaw-cdnwnd.com/be2e83789f25bfdcbdc3aab39f8af1f4/200000067-b8636b8638/1000007450-4.png?ph=6ddc97c4ef" || set /a CHYBY+=1
echo.
if %CHYBY%==0 (
  echo Hotovo! Muzes zavrit okno a obnovit web v prohlizeci.
) else (
  echo Hotovo, ale %CHYBY% souboru se nepodarilo stahnout. Napis Claudovi.
)
pause
