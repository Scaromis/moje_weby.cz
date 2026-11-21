@echo off
rem ================================================================
rem  Truhlarstvi Vojtech - stazeni fotek z jejich webu
rem  Spusti stahni-fotky.ps1 (PowerShell, soucast Windows).
rem  Fotky se ulozi do slozky _zdroje vedle tohoto souboru.
rem ================================================================
chcp 65001 >nul
cd /d "%~dp0"
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0stahni-fotky.ps1"
pause
