@echo off
rem ================================================================
rem  Kaspar truhlarstvi - stazeni fotek a loga z jejich webu
rem  208 souboru se ulozi do slozky _zdroje vedle tohoto souboru.
rem  Obsahuje jen prikazy curl (stahovani z files.site.forpsi.com
rem  a files.site.site3.eu, kde ma kaspar-truhlarstvi.cz fotky).
rem  Originaly jsou velke (asi 300 MB), stahovani chvili potrva.
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
echo Stahuji 208 souboru z webu kaspar-truhlarstvi.cz ...
echo.
echo [1/208] _zdroje\dvere\01.jpg
if not exist "_zdroje\dvere\01.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\dvere\01.jpg" "https://files.site.site3.eu/cb/1d/cb1d80f4-1cfc-46c7-8c27-e2a8e09aa663.jpg" || set /a CHYBY+=1
echo [2/208] _zdroje\dvere\02.jpg
if not exist "_zdroje\dvere\02.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\dvere\02.jpg" "https://files.site.site3.eu/e0/5d/e05d7c1b-12ad-4182-9495-a10ab0bb68e9.jpg" || set /a CHYBY+=1
echo [3/208] _zdroje\dvere\03.jpg
if not exist "_zdroje\dvere\03.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\dvere\03.jpg" "https://files.site.site3.eu/d0/09/d0091189-827b-4d83-8dbb-38abf5d9309b.jpg" || set /a CHYBY+=1
echo [4/208] _zdroje\dvere\04.jpg
if not exist "_zdroje\dvere\04.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\dvere\04.jpg" "https://files.site.site3.eu/37/13/371339d3-26db-4399-944d-294649464565.jpg" || set /a CHYBY+=1
echo [5/208] _zdroje\dvere\05.jpg
if not exist "_zdroje\dvere\05.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\dvere\05.jpg" "https://files.site.forpsi.com/32/1a/321add34-5045-4929-920a-64906aef35d3.JPG" || set /a CHYBY+=1
echo [6/208] _zdroje\dvere\06.jpg
if not exist "_zdroje\dvere\06.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\dvere\06.jpg" "https://files.site.forpsi.com/7c/4c/7c4c728c-d694-4c67-81e1-487573283c35.JPG" || set /a CHYBY+=1
echo [7/208] _zdroje\dvere\07.jpg
if not exist "_zdroje\dvere\07.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\dvere\07.jpg" "https://files.site.forpsi.com/71/29/71295e71-b1db-4e77-9a0d-2b1584e763d1.JPG" || set /a CHYBY+=1
echo [8/208] _zdroje\dvere\08.jpg
if not exist "_zdroje\dvere\08.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\dvere\08.jpg" "https://files.site.forpsi.com/ce/2c/ce2c3ea8-304e-4fde-a440-cb9684cadbf1.JPG" || set /a CHYBY+=1
echo [9/208] _zdroje\dvere\09.jpg
if not exist "_zdroje\dvere\09.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\dvere\09.jpg" "https://files.site.forpsi.com/b8/ee/b8ee6b29-e5d0-400b-8aef-12f506af5938.JPG" || set /a CHYBY+=1
echo [10/208] _zdroje\dvere\10.jpg
if not exist "_zdroje\dvere\10.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\dvere\10.jpg" "https://files.site.forpsi.com/12/08/1208075b-e634-4726-ad27-43fbececa8bc.JPG" || set /a CHYBY+=1
echo [11/208] _zdroje\dvere\11.jpg
if not exist "_zdroje\dvere\11.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\dvere\11.jpg" "https://files.site.forpsi.com/bd/4b/bd4b44bc-123a-473a-a074-338932861487.JPG" || set /a CHYBY+=1
echo [12/208] _zdroje\dvere\12.jpg
if not exist "_zdroje\dvere\12.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\dvere\12.jpg" "https://files.site.forpsi.com/00/94/0094c9da-e8e8-41a4-819e-e2b75e3e8456.JPG" || set /a CHYBY+=1
echo [13/208] _zdroje\dvere\13.jpg
if not exist "_zdroje\dvere\13.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\dvere\13.jpg" "https://files.site.forpsi.com/2f/f0/2ff011c7-f0d9-46c6-9f1c-7b572924843f.JPG" || set /a CHYBY+=1
echo [14/208] _zdroje\dvere\14.jpg
if not exist "_zdroje\dvere\14.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\dvere\14.jpg" "https://files.site.forpsi.com/bd/89/bd89b412-9bc0-4b61-8f35-d7840d908858.JPG" || set /a CHYBY+=1
echo [15/208] _zdroje\dvere\15.jpg
if not exist "_zdroje\dvere\15.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\dvere\15.jpg" "https://files.site.forpsi.com/0c/6f/0c6f5c88-a750-48af-9356-927aa1ebc1cb.JPG" || set /a CHYBY+=1
echo [16/208] _zdroje\dvere\16.jpg
if not exist "_zdroje\dvere\16.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\dvere\16.jpg" "https://files.site.forpsi.com/1d/60/1d6054ff-ecce-4200-87e0-9dc6ae2556a3.JPG" || set /a CHYBY+=1
echo [17/208] _zdroje\dvere\17.jpg
if not exist "_zdroje\dvere\17.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\dvere\17.jpg" "https://files.site.forpsi.com/c6/4b/c64befd5-5355-4624-b2f2-30c0bc118995.jpg" || set /a CHYBY+=1
echo [18/208] _zdroje\dvere\18.jpg
if not exist "_zdroje\dvere\18.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\dvere\18.jpg" "https://files.site.forpsi.com/4b/96/4b965a54-51f9-4b27-ac10-14f6f2ad13b3.jpg" || set /a CHYBY+=1
echo [19/208] _zdroje\dvere\19.jpg
if not exist "_zdroje\dvere\19.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\dvere\19.jpg" "https://files.site.forpsi.com/9f/3d/9f3df309-2660-4e7f-98c6-44b63ebff9df.JPG" || set /a CHYBY+=1
echo [20/208] _zdroje\dvere\20.jpg
if not exist "_zdroje\dvere\20.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\dvere\20.jpg" "https://files.site.forpsi.com/cc/12/cc12134a-cd40-46f7-a3c8-b116df5314d3.JPG" || set /a CHYBY+=1
echo [21/208] _zdroje\dvere\21.jpg
if not exist "_zdroje\dvere\21.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\dvere\21.jpg" "https://files.site.forpsi.com/07/e1/07e1045b-7f7f-4249-bbe4-bc6ad4777747.JPG" || set /a CHYBY+=1
echo [22/208] _zdroje\dvere\22.jpg
if not exist "_zdroje\dvere\22.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\dvere\22.jpg" "https://files.site.forpsi.com/71/6a/716a50a1-107b-41e9-a912-2b365d97f23e.JPG" || set /a CHYBY+=1
echo [23/208] _zdroje\dvere\23.jpg
if not exist "_zdroje\dvere\23.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\dvere\23.jpg" "https://files.site.forpsi.com/fa/a1/faa13ec2-b936-4e42-9791-5735d1423813.jpg" || set /a CHYBY+=1
echo [24/208] _zdroje\dvere\24.jpg
if not exist "_zdroje\dvere\24.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\dvere\24.jpg" "https://files.site.forpsi.com/fb/6c/fb6cb898-41fd-46f8-b038-a0261ca70133.jpg" || set /a CHYBY+=1
echo [25/208] _zdroje\dvere\25.jpg
if not exist "_zdroje\dvere\25.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\dvere\25.jpg" "https://files.site.forpsi.com/7b/7e/7b7e0356-3834-4c65-8ac2-4afa940327dd.jpg" || set /a CHYBY+=1
echo [26/208] _zdroje\dvere\26.jpg
if not exist "_zdroje\dvere\26.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\dvere\26.jpg" "https://files.site.forpsi.com/75/d3/75d39f71-ea4c-46bc-8954-5b6ab955ff85.jpg" || set /a CHYBY+=1
echo [27/208] _zdroje\dvere\27.jpg
if not exist "_zdroje\dvere\27.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\dvere\27.jpg" "https://files.site.forpsi.com/1d/25/1d2568d0-e1f9-4d9e-9b70-4f4ab53f636d.jpg" || set /a CHYBY+=1
echo [28/208] _zdroje\dvere\28.jpg
if not exist "_zdroje\dvere\28.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\dvere\28.jpg" "https://files.site.forpsi.com/1f/87/1f870be3-73f0-4646-955b-c272533a19ff.jpg" || set /a CHYBY+=1
echo [29/208] _zdroje\dvere\29.jpg
if not exist "_zdroje\dvere\29.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\dvere\29.jpg" "https://files.site.forpsi.com/21/00/2100e34b-04d0-4264-b318-512696ace4a2.JPG" || set /a CHYBY+=1
echo [30/208] _zdroje\dvere\30.jpg
if not exist "_zdroje\dvere\30.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\dvere\30.jpg" "https://files.site.forpsi.com/b7/13/b713f977-06b5-4889-878c-f17323a4f5a7.JPG" || set /a CHYBY+=1
echo [31/208] _zdroje\dvere\31.jpg
if not exist "_zdroje\dvere\31.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\dvere\31.jpg" "https://files.site.forpsi.com/43/b1/43b12f55-50e2-4c0d-9570-dbf3954d243c.jpg" || set /a CHYBY+=1
echo [32/208] _zdroje\dvere\32.jpg
if not exist "_zdroje\dvere\32.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\dvere\32.jpg" "https://files.site.forpsi.com/e1/aa/e1aaf297-09d8-4c48-8e87-c144f7ad5509.jpg" || set /a CHYBY+=1
echo [33/208] _zdroje\dvere\33.jpg
if not exist "_zdroje\dvere\33.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\dvere\33.jpg" "https://files.site.forpsi.com/d7/96/d7967383-5bdb-4f78-b06c-fc6455ff06c6.jpg" || set /a CHYBY+=1
echo [34/208] _zdroje\dvere\34.jpg
if not exist "_zdroje\dvere\34.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\dvere\34.jpg" "https://files.site.forpsi.com/b0/10/b010c7a9-7434-4623-be0c-bb6bcd0e998a.JPG" || set /a CHYBY+=1
echo [35/208] _zdroje\dvere\35.jpg
if not exist "_zdroje\dvere\35.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\dvere\35.jpg" "https://files.site.forpsi.com/ba/7b/ba7be938-8913-4841-9740-adffd2cbf3e6.jpg" || set /a CHYBY+=1
echo [36/208] _zdroje\dvere\36.jpg
if not exist "_zdroje\dvere\36.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\dvere\36.jpg" "https://files.site.forpsi.com/ba/b3/bab3f692-01ac-4f0f-bdd4-2a27951721a2.jpg" || set /a CHYBY+=1
echo [37/208] _zdroje\dvere\37.jpg
if not exist "_zdroje\dvere\37.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\dvere\37.jpg" "https://files.site.forpsi.com/38/e9/38e9147b-5583-487b-902d-509bd0a60327.JPG" || set /a CHYBY+=1
echo [38/208] _zdroje\dvere\38.jpg
if not exist "_zdroje\dvere\38.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\dvere\38.jpg" "https://files.site.forpsi.com/da/ee/daee86da-fc27-4932-8cd0-cecd16e50067.jpg" || set /a CHYBY+=1
echo [39/208] _zdroje\dvere\39.jpg
if not exist "_zdroje\dvere\39.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\dvere\39.jpg" "https://files.site.forpsi.com/78/9c/789c78a8-7f41-488c-b10d-88a291908e0c.jpg" || set /a CHYBY+=1
echo [40/208] _zdroje\kuchyne\01.jpg
if not exist "_zdroje\kuchyne\01.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\kuchyne\01.jpg" "https://files.site.forpsi.com/fe/a9/fea94b9f-907e-4259-9ad2-2487651402c9.jpg" || set /a CHYBY+=1
echo [41/208] _zdroje\kuchyne\02.jpg
if not exist "_zdroje\kuchyne\02.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\kuchyne\02.jpg" "https://files.site.site3.eu/90/72/90724535-fd16-4d8d-ac56-23257d683b10.jpg" || set /a CHYBY+=1
echo [42/208] _zdroje\kuchyne\03.jpg
if not exist "_zdroje\kuchyne\03.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\kuchyne\03.jpg" "https://files.site.site3.eu/8c/15/8c15cfde-cb27-49b2-aa13-3df3720664cf.jpg" || set /a CHYBY+=1
echo [43/208] _zdroje\kuchyne\04.jpg
if not exist "_zdroje\kuchyne\04.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\kuchyne\04.jpg" "https://files.site.site3.eu/f8/a5/f8a566e3-31e5-4e6e-be93-e03823e3a73c.jpg" || set /a CHYBY+=1
echo [44/208] _zdroje\kuchyne\05.jpg
if not exist "_zdroje\kuchyne\05.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\kuchyne\05.jpg" "https://files.site.site3.eu/e5/8f/e58f81e2-927b-4617-81b1-c4e52387c182.jpg" || set /a CHYBY+=1
echo [45/208] _zdroje\kuchyne\06.jpg
if not exist "_zdroje\kuchyne\06.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\kuchyne\06.jpg" "https://files.site.site3.eu/47/b2/47b23805-957e-4290-8476-2b76c8aefa49.jpg" || set /a CHYBY+=1
echo [46/208] _zdroje\kuchyne\07.jpg
if not exist "_zdroje\kuchyne\07.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\kuchyne\07.jpg" "https://files.site.site3.eu/90/64/906454db-a597-4ba2-bc07-79ae3766b020.jpg" || set /a CHYBY+=1
echo [47/208] _zdroje\kuchyne\08.jpg
if not exist "_zdroje\kuchyne\08.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\kuchyne\08.jpg" "https://files.site.site3.eu/26/f4/26f40268-a94f-4df4-8607-db48e29001da.jpg" || set /a CHYBY+=1
echo [48/208] _zdroje\kuchyne\09.jpg
if not exist "_zdroje\kuchyne\09.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\kuchyne\09.jpg" "https://files.site.site3.eu/36/41/3641c957-bbbe-4f6c-bb58-8026b41c44a4.jpg" || set /a CHYBY+=1
echo [49/208] _zdroje\kuchyne\10.jpg
if not exist "_zdroje\kuchyne\10.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\kuchyne\10.jpg" "https://files.site.site3.eu/28/b3/28b3ba31-1414-4dda-bb1d-c90857b71233.jpg" || set /a CHYBY+=1
echo [50/208] _zdroje\kuchyne\11.jpg
if not exist "_zdroje\kuchyne\11.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\kuchyne\11.jpg" "https://files.site.forpsi.com/b7/1c/b71c6bc2-657f-448d-bb53-8c92e0af1417.JPG" || set /a CHYBY+=1
echo [51/208] _zdroje\kuchyne\12.jpg
if not exist "_zdroje\kuchyne\12.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\kuchyne\12.jpg" "https://files.site.forpsi.com/f8/81/f881dd71-6cd0-47a7-975e-1d1da39407b8.jpg" || set /a CHYBY+=1
echo [52/208] _zdroje\kuchyne\13.jpg
if not exist "_zdroje\kuchyne\13.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\kuchyne\13.jpg" "https://files.site.forpsi.com/fd/cf/fdcf4ce6-8e8e-48b4-8742-eaa36f20e7de.JPG" || set /a CHYBY+=1
echo [53/208] _zdroje\kuchyne\14.jpg
if not exist "_zdroje\kuchyne\14.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\kuchyne\14.jpg" "https://files.site.forpsi.com/e0/e8/e0e83cba-77c3-446e-952d-349755d5fb8b.JPG" || set /a CHYBY+=1
echo [54/208] _zdroje\kuchyne\15.jpg
if not exist "_zdroje\kuchyne\15.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\kuchyne\15.jpg" "https://files.site.forpsi.com/04/27/042779d5-4076-4f0d-ab7f-02138beb4bb3.JPG" || set /a CHYBY+=1
echo [55/208] _zdroje\kuchyne\16.jpg
if not exist "_zdroje\kuchyne\16.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\kuchyne\16.jpg" "https://files.site.forpsi.com/fe/42/fe427f59-d1e8-4ca3-b1cd-084bc0315261.JPG" || set /a CHYBY+=1
echo [56/208] _zdroje\kuchyne\17.jpg
if not exist "_zdroje\kuchyne\17.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\kuchyne\17.jpg" "https://files.site.forpsi.com/7d/89/7d898524-2d8d-4493-b2e6-837d4392a3d9.JPG" || set /a CHYBY+=1
echo [57/208] _zdroje\kuchyne\18.jpg
if not exist "_zdroje\kuchyne\18.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\kuchyne\18.jpg" "https://files.site.forpsi.com/30/42/30424f31-8dcf-4e58-9dc7-9093eb9c9dc2.jpg" || set /a CHYBY+=1
echo [58/208] _zdroje\kuchyne\19.jpg
if not exist "_zdroje\kuchyne\19.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\kuchyne\19.jpg" "https://files.site.forpsi.com/e7/5f/e75f1bcd-fd12-4d40-97e2-9afb8d648500.jpg" || set /a CHYBY+=1
echo [59/208] _zdroje\kuchyne\20.jpg
if not exist "_zdroje\kuchyne\20.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\kuchyne\20.jpg" "https://files.site.forpsi.com/c1/fa/c1fa19e7-174f-4a01-926f-41c139bec12d.JPG" || set /a CHYBY+=1
echo [60/208] _zdroje\kuchyne\21.jpg
if not exist "_zdroje\kuchyne\21.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\kuchyne\21.jpg" "https://files.site.forpsi.com/aa/bc/aabce8b9-71b0-42cd-b99f-9f86a7554257.JPG" || set /a CHYBY+=1
echo [61/208] _zdroje\kuchyne\22.jpg
if not exist "_zdroje\kuchyne\22.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\kuchyne\22.jpg" "https://files.site.forpsi.com/b6/e8/b6e8f728-8e35-4965-a209-c9346987bf1d.JPG" || set /a CHYBY+=1
echo [62/208] _zdroje\kuchyne\23.jpg
if not exist "_zdroje\kuchyne\23.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\kuchyne\23.jpg" "https://files.site.forpsi.com/bc/71/bc7166a3-4a3c-4344-a912-3154a5ff83df.JPG" || set /a CHYBY+=1
echo [63/208] _zdroje\kuchyne\24.jpg
if not exist "_zdroje\kuchyne\24.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\kuchyne\24.jpg" "https://files.site.forpsi.com/75/1e/751eb3ad-ef82-4605-8a97-f73dfab5f681.jpg" || set /a CHYBY+=1
echo [64/208] _zdroje\kuchyne\25.jpg
if not exist "_zdroje\kuchyne\25.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\kuchyne\25.jpg" "https://files.site.forpsi.com/d4/15/d415a031-e794-4826-bfd7-bfe23d25ca72.jpg" || set /a CHYBY+=1
echo [65/208] _zdroje\kuchyne\26.jpg
if not exist "_zdroje\kuchyne\26.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\kuchyne\26.jpg" "https://files.site.forpsi.com/f9/97/f9974902-9b0d-49a6-924e-8348e208d382.JPG" || set /a CHYBY+=1
echo [66/208] _zdroje\kuchyne\27.jpg
if not exist "_zdroje\kuchyne\27.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\kuchyne\27.jpg" "https://files.site.forpsi.com/b5/ab/b5ab989c-0891-4ff0-b90f-8c3fee2c7feb.JPG" || set /a CHYBY+=1
echo [67/208] _zdroje\kuchyne\28.jpg
if not exist "_zdroje\kuchyne\28.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\kuchyne\28.jpg" "https://files.site.forpsi.com/15/50/1550328f-2aa5-4a62-ab5e-aa131ea292ae.jpg" || set /a CHYBY+=1
echo [68/208] _zdroje\kuchyne\29.jpg
if not exist "_zdroje\kuchyne\29.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\kuchyne\29.jpg" "https://files.site.forpsi.com/31/4a/314a82c3-cd1b-47e2-ab61-2bf35ed5b02c.JPG" || set /a CHYBY+=1
echo [69/208] _zdroje\kuchyne\30.jpg
if not exist "_zdroje\kuchyne\30.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\kuchyne\30.jpg" "https://files.site.forpsi.com/b1/c3/b1c3ecfa-8f1a-42ec-bbc0-57d9a2dc6345.jpg" || set /a CHYBY+=1
echo [70/208] _zdroje\kuchyne\31.jpg
if not exist "_zdroje\kuchyne\31.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\kuchyne\31.jpg" "https://files.site.forpsi.com/32/0c/320c4643-431a-4c24-a831-7f9dacac668d.jpg" || set /a CHYBY+=1
echo [71/208] _zdroje\kuchyne\32.jpg
if not exist "_zdroje\kuchyne\32.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\kuchyne\32.jpg" "https://files.site.forpsi.com/25/6a/256a8a3e-703d-4241-81b3-28ae575080ec.jpg" || set /a CHYBY+=1
echo [72/208] _zdroje\kuchyne\33.jpg
if not exist "_zdroje\kuchyne\33.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\kuchyne\33.jpg" "https://files.site.forpsi.com/43/64/43648f49-ed07-4ee6-9743-19aa4251c81f.jpg" || set /a CHYBY+=1
echo [73/208] _zdroje\kuchyne\34.jpg
if not exist "_zdroje\kuchyne\34.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\kuchyne\34.jpg" "https://files.site.forpsi.com/84/41/84411347-b02d-41ea-89fd-927b3f14d48a.jpg" || set /a CHYBY+=1
echo [74/208] _zdroje\kuchyne\35.jpg
if not exist "_zdroje\kuchyne\35.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\kuchyne\35.jpg" "https://files.site.forpsi.com/2d/07/2d0712b5-956c-4e5d-ba48-3a32423bce86.jpg" || set /a CHYBY+=1
echo [75/208] _zdroje\kuchyne\36.jpg
if not exist "_zdroje\kuchyne\36.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\kuchyne\36.jpg" "https://files.site.forpsi.com/16/7e/167e888d-7aab-4b0b-88ae-e4acbd200f8b.jpg" || set /a CHYBY+=1
echo [76/208] _zdroje\kuchyne\37.jpg
if not exist "_zdroje\kuchyne\37.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\kuchyne\37.jpg" "https://files.site.forpsi.com/c4/fe/c4fe0cc2-d196-42bb-92d2-1683162559f5.jpg" || set /a CHYBY+=1
echo [77/208] _zdroje\kuchyne\38.jpg
if not exist "_zdroje\kuchyne\38.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\kuchyne\38.jpg" "https://files.site.forpsi.com/a4/1b/a41b3ccf-ceb7-46fc-b033-53169ad8417a.jpg" || set /a CHYBY+=1
echo [78/208] _zdroje\kuchyne\39.jpg
if not exist "_zdroje\kuchyne\39.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\kuchyne\39.jpg" "https://files.site.forpsi.com/ae/18/ae182656-2120-44b7-ae03-40741087db44.jpg" || set /a CHYBY+=1
echo [79/208] _zdroje\kuchyne\40.jpg
if not exist "_zdroje\kuchyne\40.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\kuchyne\40.jpg" "https://files.site.forpsi.com/e7/3b/e73bfddd-343a-4e57-b990-6ae9f2a6b5dd.jpg" || set /a CHYBY+=1
echo [80/208] _zdroje\kuchyne\41.jpg
if not exist "_zdroje\kuchyne\41.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\kuchyne\41.jpg" "https://files.site.forpsi.com/4c/18/4c181593-a7e4-4c34-8c78-9153c4b6458b.jpg" || set /a CHYBY+=1
echo [81/208] _zdroje\kuchyne\42.jpg
if not exist "_zdroje\kuchyne\42.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\kuchyne\42.jpg" "https://files.site.forpsi.com/ef/a1/efa15ef2-2efa-4ef8-ae93-b567ee8873dd.jpg" || set /a CHYBY+=1
echo [82/208] _zdroje\kuchyne\43.jpg
if not exist "_zdroje\kuchyne\43.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\kuchyne\43.jpg" "https://files.site.forpsi.com/af/6d/af6d6de9-3ca4-443a-bef7-2e595b64696e.jpg" || set /a CHYBY+=1
echo [83/208] _zdroje\kuchyne\44.jpg
if not exist "_zdroje\kuchyne\44.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\kuchyne\44.jpg" "https://files.site.forpsi.com/b1/c1/b1c14f62-acc4-4e1a-aea5-4ebd12d4b875.jpg" || set /a CHYBY+=1
echo [84/208] _zdroje\kuchyne\45.jpg
if not exist "_zdroje\kuchyne\45.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\kuchyne\45.jpg" "https://files.site.forpsi.com/71/52/7152127a-04fa-4291-86fa-28ba377ac89f.jpg" || set /a CHYBY+=1
echo [85/208] _zdroje\kuchyne\46.jpg
if not exist "_zdroje\kuchyne\46.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\kuchyne\46.jpg" "https://files.site.forpsi.com/a4/06/a406224e-2f48-4f0d-b481-660a869d6bfb.jpg" || set /a CHYBY+=1
echo [86/208] _zdroje\kuchyne\47.jpg
if not exist "_zdroje\kuchyne\47.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\kuchyne\47.jpg" "https://files.site.forpsi.com/0d/d6/0dd6971b-5776-4f24-86a4-1d97758ed5f2.jpg" || set /a CHYBY+=1
echo [87/208] _zdroje\kuchyne\48.jpg
if not exist "_zdroje\kuchyne\48.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\kuchyne\48.jpg" "https://files.site.forpsi.com/74/10/74109bb4-e634-4c7f-a4d5-041c59b46cec.jpg" || set /a CHYBY+=1
echo [88/208] _zdroje\kuchyne\49.jpg
if not exist "_zdroje\kuchyne\49.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\kuchyne\49.jpg" "https://files.site.forpsi.com/5d/15/5d154b22-2fc5-41fb-931f-386bd81f5753.JPG" || set /a CHYBY+=1
echo [89/208] _zdroje\kuchyne\50.jpg
if not exist "_zdroje\kuchyne\50.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\kuchyne\50.jpg" "https://files.site.forpsi.com/31/f3/31f36dad-52f2-42cb-aaaa-422128286fbc.JPG" || set /a CHYBY+=1
echo [90/208] _zdroje\kuchyne\51.jpg
if not exist "_zdroje\kuchyne\51.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\kuchyne\51.jpg" "https://files.site.forpsi.com/ed/2b/ed2b7481-8600-44f7-b138-1bb5f2024c75.JPG" || set /a CHYBY+=1
echo [91/208] _zdroje\kuchyne\52.jpg
if not exist "_zdroje\kuchyne\52.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\kuchyne\52.jpg" "https://files.site.forpsi.com/1f/95/1f95aa40-94f1-4092-a333-35cbfea160d6.JPG" || set /a CHYBY+=1
echo [92/208] _zdroje\kuchyne\53.jpg
if not exist "_zdroje\kuchyne\53.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\kuchyne\53.jpg" "https://files.site.forpsi.com/77/1d/771da61f-4854-4c1d-a1ea-de6fd7926de6.JPG" || set /a CHYBY+=1
echo [93/208] _zdroje\kuchyne\54.jpg
if not exist "_zdroje\kuchyne\54.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\kuchyne\54.jpg" "https://files.site.forpsi.com/3b/f0/3bf0c8e7-5519-4039-98a0-85e884f2affe.JPG" || set /a CHYBY+=1
echo [94/208] _zdroje\schody\01.jpg
if not exist "_zdroje\schody\01.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\schody\01.jpg" "https://files.site.site3.eu/4c/7c/4c7c1976-85fb-4da5-a4dd-c1168c1dde74.jpg" || set /a CHYBY+=1
echo [95/208] _zdroje\schody\02.jpg
if not exist "_zdroje\schody\02.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\schody\02.jpg" "https://files.site.site3.eu/d5/1c/d51cce94-e394-4135-8f42-c24e5251728b.jpg" || set /a CHYBY+=1
echo [96/208] _zdroje\schody\03.jpg
if not exist "_zdroje\schody\03.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\schody\03.jpg" "https://files.site.site3.eu/13/58/1358d611-5ca8-4412-b4dc-28e5fc2408b0.jpg" || set /a CHYBY+=1
echo [97/208] _zdroje\schody\04.jpg
if not exist "_zdroje\schody\04.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\schody\04.jpg" "https://files.site.site3.eu/24/de/24dec9d4-c7ac-4379-b954-0614438cd449.jpg" || set /a CHYBY+=1
echo [98/208] _zdroje\schody\05.jpg
if not exist "_zdroje\schody\05.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\schody\05.jpg" "https://files.site.site3.eu/bb/bf/bbbff9eb-0d0a-41b4-838c-2682cc62a7be.jpg" || set /a CHYBY+=1
echo [99/208] _zdroje\schody\06.jpg
if not exist "_zdroje\schody\06.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\schody\06.jpg" "https://files.site.site3.eu/d3/bc/d3bca9a4-6c5d-4c22-9af5-b7b12a8e37d0.jpg" || set /a CHYBY+=1
echo [100/208] _zdroje\schody\07.jpg
if not exist "_zdroje\schody\07.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\schody\07.jpg" "https://files.site.site3.eu/a3/fd/a3fd4d1a-b39e-4fb8-b668-213529931679.jpg" || set /a CHYBY+=1
echo [101/208] _zdroje\schody\08.jpg
if not exist "_zdroje\schody\08.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\schody\08.jpg" "https://files.site.forpsi.com/28/c7/28c78ad6-574d-4e29-8059-f685b12d2b49.JPG" || set /a CHYBY+=1
echo [102/208] _zdroje\schody\09.jpg
if not exist "_zdroje\schody\09.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\schody\09.jpg" "https://files.site.forpsi.com/3c/79/3c79af6c-61d9-413d-9244-fb1d4a808160.JPG" || set /a CHYBY+=1
echo [103/208] _zdroje\schody\10.jpg
if not exist "_zdroje\schody\10.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\schody\10.jpg" "https://files.site.forpsi.com/27/32/2732e2c0-a7ef-48da-8ad0-e61b350735d7.JPG" || set /a CHYBY+=1
echo [104/208] _zdroje\schody\11.jpg
if not exist "_zdroje\schody\11.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\schody\11.jpg" "https://files.site.forpsi.com/5b/18/5b186a6c-121a-498c-8960-bdc3fa914fd2.JPG" || set /a CHYBY+=1
echo [105/208] _zdroje\schody\12.jpg
if not exist "_zdroje\schody\12.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\schody\12.jpg" "https://files.site.forpsi.com/f5/d7/f5d78f51-75e1-4daf-b0d5-e346023e1fb3.JPG" || set /a CHYBY+=1
echo [106/208] _zdroje\schody\13.jpg
if not exist "_zdroje\schody\13.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\schody\13.jpg" "https://files.site.forpsi.com/96/bc/96bcaf29-b36f-4eef-a755-550413db0d86.JPG" || set /a CHYBY+=1
echo [107/208] _zdroje\schody\14.jpg
if not exist "_zdroje\schody\14.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\schody\14.jpg" "https://files.site.forpsi.com/03/7b/037b46c8-557a-4185-98bb-7338a07a3c92.JPG" || set /a CHYBY+=1
echo [108/208] _zdroje\schody\15.jpg
if not exist "_zdroje\schody\15.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\schody\15.jpg" "https://files.site.forpsi.com/9b/9a/9b9aac93-14e2-41fb-bd58-c66932a74b84.JPG" || set /a CHYBY+=1
echo [109/208] _zdroje\schody\16.jpg
if not exist "_zdroje\schody\16.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\schody\16.jpg" "https://files.site.forpsi.com/6a/9b/6a9b1dfa-40bb-4207-9177-908b59b16014.JPG" || set /a CHYBY+=1
echo [110/208] _zdroje\schody\17.jpg
if not exist "_zdroje\schody\17.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\schody\17.jpg" "https://files.site.forpsi.com/b7/9c/b79c05ff-2845-413f-bea6-075fab75e1fe.JPG" || set /a CHYBY+=1
echo [111/208] _zdroje\schody\18.jpg
if not exist "_zdroje\schody\18.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\schody\18.jpg" "https://files.site.forpsi.com/6e/d3/6ed33a51-40b9-4b9e-9ffe-e72047da2793.jpg" || set /a CHYBY+=1
echo [112/208] _zdroje\schody\19.jpg
if not exist "_zdroje\schody\19.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\schody\19.jpg" "https://files.site.forpsi.com/89/06/89068100-cd78-46b8-b64b-d8bb2736fa83.jpg" || set /a CHYBY+=1
echo [113/208] _zdroje\schody\20.jpg
if not exist "_zdroje\schody\20.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\schody\20.jpg" "https://files.site.forpsi.com/26/73/26733765-aeb8-4cd4-8818-bd9254e55171.jpg" || set /a CHYBY+=1
echo [114/208] _zdroje\schody\21.jpg
if not exist "_zdroje\schody\21.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\schody\21.jpg" "https://files.site.forpsi.com/5a/f0/5af003d0-ace2-4293-b694-548bc0d0753c.jpg" || set /a CHYBY+=1
echo [115/208] _zdroje\schody\22.jpg
if not exist "_zdroje\schody\22.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\schody\22.jpg" "https://files.site.forpsi.com/1e/9d/1e9d54e7-1b59-473d-82ff-d72a4c8eb90d.jpg" || set /a CHYBY+=1
echo [116/208] _zdroje\schody\23.jpg
if not exist "_zdroje\schody\23.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\schody\23.jpg" "https://files.site.forpsi.com/f0/d8/f0d85fee-fcee-4737-ade3-00d9cb982de9.jpg" || set /a CHYBY+=1
echo [117/208] _zdroje\schody\24.jpg
if not exist "_zdroje\schody\24.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\schody\24.jpg" "https://files.site.forpsi.com/a0/74/a074ba40-463b-4de7-92da-6c6f5c191f11.jpg" || set /a CHYBY+=1
echo [118/208] _zdroje\schody\25.jpg
if not exist "_zdroje\schody\25.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\schody\25.jpg" "https://files.site.forpsi.com/a5/49/a549956c-89fe-4972-99c6-b09b04f13bba.jpg" || set /a CHYBY+=1
echo [119/208] _zdroje\skrine\01.jpg
if not exist "_zdroje\skrine\01.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\skrine\01.jpg" "https://files.site.site3.eu/44/de/44de2365-87bc-45b7-9247-e57069a5d965.jpg" || set /a CHYBY+=1
echo [120/208] _zdroje\skrine\02.jpg
if not exist "_zdroje\skrine\02.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\skrine\02.jpg" "https://files.site.site3.eu/a6/22/a622f244-e58b-41c5-9261-8f20af747a9f.jpg" || set /a CHYBY+=1
echo [121/208] _zdroje\skrine\03.jpg
if not exist "_zdroje\skrine\03.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\skrine\03.jpg" "https://files.site.site3.eu/33/c4/33c4b511-5408-411f-a5b6-4e7599b73ec1.jpg" || set /a CHYBY+=1
echo [122/208] _zdroje\skrine\04.jpg
if not exist "_zdroje\skrine\04.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\skrine\04.jpg" "https://files.site.site3.eu/c8/ce/c8cec8e2-b8dc-4dd8-99c7-827ee7d81545.jpg" || set /a CHYBY+=1
echo [123/208] _zdroje\skrine\05.jpg
if not exist "_zdroje\skrine\05.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\skrine\05.jpg" "https://files.site.site3.eu/cf/ac/cfac6b17-7d1e-4c98-95d9-f09183826d6f.jpg" || set /a CHYBY+=1
echo [124/208] _zdroje\skrine\06.jpg
if not exist "_zdroje\skrine\06.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\skrine\06.jpg" "https://files.site.site3.eu/fb/66/fb665edb-7cd9-463a-ab98-acc89c018709.jpg" || set /a CHYBY+=1
echo [125/208] _zdroje\skrine\07.jpg
if not exist "_zdroje\skrine\07.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\skrine\07.jpg" "https://files.site.site3.eu/67/6e/676ebf09-9a3f-4a0d-9f1e-c83d8974b38c.jpg" || set /a CHYBY+=1
echo [126/208] _zdroje\skrine\08.jpg
if not exist "_zdroje\skrine\08.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\skrine\08.jpg" "https://files.site.site3.eu/13/f6/13f6a43d-c5aa-444a-8826-97d735cf6800.jpg" || set /a CHYBY+=1
echo [127/208] _zdroje\skrine\09.jpg
if not exist "_zdroje\skrine\09.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\skrine\09.jpg" "https://files.site.site3.eu/9d/a7/9da7f6cb-c112-4c96-9f1d-3ce8111e513b.jpg" || set /a CHYBY+=1
echo [128/208] _zdroje\skrine\10.jpg
if not exist "_zdroje\skrine\10.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\skrine\10.jpg" "https://files.site.site3.eu/ef/b9/efb976f4-0a17-4548-a3c7-1915688a1df6.jpg" || set /a CHYBY+=1
echo [129/208] _zdroje\skrine\11.jpg
if not exist "_zdroje\skrine\11.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\skrine\11.jpg" "https://files.site.forpsi.com/a4/19/a419c3c4-ea76-4ab6-90e5-c2997f30bd06.JPG" || set /a CHYBY+=1
echo [130/208] _zdroje\skrine\12.jpg
if not exist "_zdroje\skrine\12.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\skrine\12.jpg" "https://files.site.forpsi.com/a2/8b/a28bb62b-4969-4786-b524-97d522a76dac.JPG" || set /a CHYBY+=1
echo [131/208] _zdroje\skrine\13.jpg
if not exist "_zdroje\skrine\13.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\skrine\13.jpg" "https://files.site.forpsi.com/07/29/072915b2-36cc-4d0b-90f1-e1001ac2e7fc.JPG" || set /a CHYBY+=1
echo [132/208] _zdroje\skrine\14.jpg
if not exist "_zdroje\skrine\14.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\skrine\14.jpg" "https://files.site.forpsi.com/ae/8b/ae8b8a6a-c771-4a3c-a394-847330332f73.JPG" || set /a CHYBY+=1
echo [133/208] _zdroje\skrine\15.jpg
if not exist "_zdroje\skrine\15.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\skrine\15.jpg" "https://files.site.forpsi.com/52/34/5234fbe3-0d4c-4c5f-849e-16731794aefd.JPG" || set /a CHYBY+=1
echo [134/208] _zdroje\skrine\16.jpg
if not exist "_zdroje\skrine\16.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\skrine\16.jpg" "https://files.site.forpsi.com/9a/66/9a66b726-492e-4cc1-9221-2ed66ae38772.JPG" || set /a CHYBY+=1
echo [135/208] _zdroje\skrine\17.jpg
if not exist "_zdroje\skrine\17.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\skrine\17.jpg" "https://files.site.forpsi.com/ca/c8/cac8bf44-9be1-46ea-af22-f705eccbe4fc.JPG" || set /a CHYBY+=1
echo [136/208] _zdroje\skrine\18.jpg
if not exist "_zdroje\skrine\18.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\skrine\18.jpg" "https://files.site.forpsi.com/04/f6/04f6523d-9325-4f8e-a70d-039e8f09f4f6.JPG" || set /a CHYBY+=1
echo [137/208] _zdroje\skrine\19.jpg
if not exist "_zdroje\skrine\19.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\skrine\19.jpg" "https://files.site.forpsi.com/bf/20/bf200176-6a34-4221-ab6e-88c9883a5dad.JPG" || set /a CHYBY+=1
echo [138/208] _zdroje\skrine\20.jpg
if not exist "_zdroje\skrine\20.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\skrine\20.jpg" "https://files.site.forpsi.com/0f/0b/0f0b7536-20cb-491d-8c77-6080ef95c008.JPG" || set /a CHYBY+=1
echo [139/208] _zdroje\skrine\21.jpg
if not exist "_zdroje\skrine\21.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\skrine\21.jpg" "https://files.site.forpsi.com/0d/5f/0d5f4794-0a29-44fa-b189-f8f2e143cbff.jpg" || set /a CHYBY+=1
echo [140/208] _zdroje\skrine\22.jpg
if not exist "_zdroje\skrine\22.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\skrine\22.jpg" "https://files.site.forpsi.com/77/52/77521af6-1a50-4856-841d-649abb3433b8.jpg" || set /a CHYBY+=1
echo [141/208] _zdroje\skrine\23.jpg
if not exist "_zdroje\skrine\23.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\skrine\23.jpg" "https://files.site.forpsi.com/8d/3d/8d3d1f95-7a40-4049-bdf3-136faace436c.jpg" || set /a CHYBY+=1
echo [142/208] _zdroje\skrine\24.jpg
if not exist "_zdroje\skrine\24.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\skrine\24.jpg" "https://files.site.forpsi.com/26/fc/26fc68e8-fd99-44f9-a6b5-641cbfba1575.jpg" || set /a CHYBY+=1
echo [143/208] _zdroje\skrine\25.jpg
if not exist "_zdroje\skrine\25.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\skrine\25.jpg" "https://files.site.forpsi.com/d2/68/d268e589-19cc-4850-996b-90f91ae4bf14.jpg" || set /a CHYBY+=1
echo [144/208] _zdroje\skrine\26.jpg
if not exist "_zdroje\skrine\26.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\skrine\26.jpg" "https://files.site.forpsi.com/db/aa/dbaa14e1-22e6-4a07-acdc-4ca415e55281.jpg" || set /a CHYBY+=1
echo [145/208] _zdroje\skrine\27.jpg
if not exist "_zdroje\skrine\27.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\skrine\27.jpg" "https://files.site.forpsi.com/ac/91/ac91351b-eff3-4b5c-9af0-840a9f2910d1.jpg" || set /a CHYBY+=1
echo [146/208] _zdroje\skrine\28.jpg
if not exist "_zdroje\skrine\28.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\skrine\28.jpg" "https://files.site.forpsi.com/b2/d2/b2d2a2b4-8821-4d29-bfde-cff6e562ca1b.jpg" || set /a CHYBY+=1
echo [147/208] _zdroje\skrine\29.jpg
if not exist "_zdroje\skrine\29.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\skrine\29.jpg" "https://files.site.forpsi.com/3c/3c/3c3c0d72-e792-42fd-8fba-e7a175a32f16.jpg" || set /a CHYBY+=1
echo [148/208] _zdroje\skrine\30.jpg
if not exist "_zdroje\skrine\30.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\skrine\30.jpg" "https://files.site.forpsi.com/a6/af/a6af7330-3402-4cfb-9d87-a3e0e850f2a8.jpg" || set /a CHYBY+=1
echo [149/208] _zdroje\skrine\31.jpg
if not exist "_zdroje\skrine\31.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\skrine\31.jpg" "https://files.site.forpsi.com/85/67/8567c55a-2e26-4f05-9388-e94e3a883e09.JPG" || set /a CHYBY+=1
echo [150/208] _zdroje\skrine\32.jpg
if not exist "_zdroje\skrine\32.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\skrine\32.jpg" "https://files.site.forpsi.com/75/f7/75f765e8-2b3d-4c91-8ee7-d4054c3f69cd.JPG" || set /a CHYBY+=1
echo [151/208] _zdroje\skrine\33.jpg
if not exist "_zdroje\skrine\33.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\skrine\33.jpg" "https://files.site.forpsi.com/42/d3/42d3c56b-3597-4429-a05f-94cbef74689d.JPG" || set /a CHYBY+=1
echo [152/208] _zdroje\skrine\34.jpg
if not exist "_zdroje\skrine\34.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\skrine\34.jpg" "https://files.site.forpsi.com/62/e4/62e4b73c-0bf2-4908-b7ea-4778dec4e34d.JPG" || set /a CHYBY+=1
echo [153/208] _zdroje\skrine\35.jpg
if not exist "_zdroje\skrine\35.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\skrine\35.jpg" "https://files.site.forpsi.com/b0/1c/b01c38bc-7d0f-4cc6-831f-f9047f806c22.JPG" || set /a CHYBY+=1
echo [154/208] _zdroje\skrine\36.jpg
if not exist "_zdroje\skrine\36.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\skrine\36.jpg" "https://files.site.forpsi.com/66/26/66260032-35de-417a-9552-36d61b7792ca.JPG" || set /a CHYBY+=1
echo [155/208] _zdroje\skrine\37.jpg
if not exist "_zdroje\skrine\37.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\skrine\37.jpg" "https://files.site.forpsi.com/85/cb/85cb299a-379a-4bc5-bf5f-79b54ec8a9fc.JPG" || set /a CHYBY+=1
echo [156/208] _zdroje\skrine\38.jpg
if not exist "_zdroje\skrine\38.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\skrine\38.jpg" "https://files.site.forpsi.com/12/1c/121cd505-016d-4c53-9fb0-9519677ac8aa.JPG" || set /a CHYBY+=1
echo [157/208] _zdroje\skrine\39.jpg
if not exist "_zdroje\skrine\39.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\skrine\39.jpg" "https://files.site.forpsi.com/50/33/50339bf1-7c84-4d44-ace8-6ab2e5546dce.jpg" || set /a CHYBY+=1
echo [158/208] _zdroje\postele\01.jpg
if not exist "_zdroje\postele\01.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\postele\01.jpg" "https://files.site.site3.eu/b8/71/b8715661-0dff-4c76-8b32-a10b1ad26ae6.jpg" || set /a CHYBY+=1
echo [159/208] _zdroje\postele\02.jpg
if not exist "_zdroje\postele\02.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\postele\02.jpg" "https://files.site.site3.eu/04/4a/044a0b8f-a8ea-468d-8916-b866d24e9dd7.jpg" || set /a CHYBY+=1
echo [160/208] _zdroje\postele\03.jpg
if not exist "_zdroje\postele\03.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\postele\03.jpg" "https://files.site.site3.eu/81/69/81690e5e-9935-4d0a-bf9b-cc48a7497eab.jpg" || set /a CHYBY+=1
echo [161/208] _zdroje\postele\04.jpg
if not exist "_zdroje\postele\04.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\postele\04.jpg" "https://files.site.site3.eu/92/52/9252bbae-a9d9-4700-8aed-216eae4ad451.jpg" || set /a CHYBY+=1
echo [162/208] _zdroje\postele\05.jpg
if not exist "_zdroje\postele\05.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\postele\05.jpg" "https://files.site.site3.eu/2f/24/2f241680-0438-48f9-b3f3-c014f4566d74.jpg" || set /a CHYBY+=1
echo [163/208] _zdroje\postele\06.jpg
if not exist "_zdroje\postele\06.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\postele\06.jpg" "https://files.site.forpsi.com/90/0b/900b1ef5-ec81-49c1-80e4-e4fca8b8ef21.JPG" || set /a CHYBY+=1
echo [164/208] _zdroje\postele\07.jpg
if not exist "_zdroje\postele\07.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\postele\07.jpg" "https://files.site.forpsi.com/3b/d6/3bd6ace3-cc88-4737-9beb-f115a5900a8c.jpg" || set /a CHYBY+=1
echo [165/208] _zdroje\postele\08.jpg
if not exist "_zdroje\postele\08.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\postele\08.jpg" "https://files.site.forpsi.com/5c/83/5c834b19-a356-4108-93dd-fac820734c21.JPG" || set /a CHYBY+=1
echo [166/208] _zdroje\postele\09.jpg
if not exist "_zdroje\postele\09.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\postele\09.jpg" "https://files.site.forpsi.com/39/f5/39f54299-dd3e-42cb-9cd1-ce506a6c1997.JPG" || set /a CHYBY+=1
echo [167/208] _zdroje\postele\10.jpg
if not exist "_zdroje\postele\10.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\postele\10.jpg" "https://files.site.forpsi.com/be/d6/bed6259c-966d-4f27-83f1-9480efd5355c.JPG" || set /a CHYBY+=1
echo [168/208] _zdroje\postele\11.jpg
if not exist "_zdroje\postele\11.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\postele\11.jpg" "https://files.site.forpsi.com/3a/c5/3ac5f04b-fea3-489a-98ec-5622c348d94e.jpg" || set /a CHYBY+=1
echo [169/208] _zdroje\postele\12.jpg
if not exist "_zdroje\postele\12.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\postele\12.jpg" "https://files.site.forpsi.com/dc/68/dc6811aa-2545-4f64-896a-90f9a2893313.jpg" || set /a CHYBY+=1
echo [170/208] _zdroje\zakazka\01.jpg
if not exist "_zdroje\zakazka\01.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\zakazka\01.jpg" "https://files.site.site3.eu/50/81/50811308-af94-4f66-8002-b3d6ae485aed.jpg" || set /a CHYBY+=1
echo [171/208] _zdroje\zakazka\02.jpg
if not exist "_zdroje\zakazka\02.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\zakazka\02.jpg" "https://files.site.site3.eu/72/ea/72ea0dff-520c-40ad-943b-b5baa7a09a82.jpg" || set /a CHYBY+=1
echo [172/208] _zdroje\zakazka\03.jpg
if not exist "_zdroje\zakazka\03.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\zakazka\03.jpg" "https://files.site.site3.eu/9e/89/9e89bf02-8d36-41a8-bcfd-d10c26a61df3.jpg" || set /a CHYBY+=1
echo [173/208] _zdroje\zakazka\04.jpg
if not exist "_zdroje\zakazka\04.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\zakazka\04.jpg" "https://files.site.site3.eu/5a/f7/5af73f21-bc18-4d37-a31d-8564ee317f5f.jpg" || set /a CHYBY+=1
echo [174/208] _zdroje\zakazka\05.jpg
if not exist "_zdroje\zakazka\05.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\zakazka\05.jpg" "https://files.site.site3.eu/7e/b0/7eb05c2d-752e-4acb-8e9a-5ed318e1aa59.jpg" || set /a CHYBY+=1
echo [175/208] _zdroje\zakazka\06.jpg
if not exist "_zdroje\zakazka\06.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\zakazka\06.jpg" "https://files.site.site3.eu/0c/26/0c26083c-fcb5-4d62-ae00-2b7571bd738d.jpg" || set /a CHYBY+=1
echo [176/208] _zdroje\zakazka\07.jpg
if not exist "_zdroje\zakazka\07.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\zakazka\07.jpg" "https://files.site.site3.eu/68/77/6877f357-d2e6-49df-88c6-fe006105202b.jpg" || set /a CHYBY+=1
echo [177/208] _zdroje\zakazka\08.jpg
if not exist "_zdroje\zakazka\08.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\zakazka\08.jpg" "https://files.site.site3.eu/ba/d3/bad36ea3-6214-4446-a510-1a6ce4bb49dc.jpg" || set /a CHYBY+=1
echo [178/208] _zdroje\zakazka\09.jpg
if not exist "_zdroje\zakazka\09.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\zakazka\09.jpg" "https://files.site.site3.eu/63/29/6329c96e-c76d-4303-9200-404c0c146dde.jpg" || set /a CHYBY+=1
echo [179/208] _zdroje\zakazka\10.jpg
if not exist "_zdroje\zakazka\10.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\zakazka\10.jpg" "https://files.site.forpsi.com/68/a9/68a9e934-6df3-4ba7-bf24-78f8ff8a66e6.JPG" || set /a CHYBY+=1
echo [180/208] _zdroje\zakazka\11.jpg
if not exist "_zdroje\zakazka\11.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\zakazka\11.jpg" "https://files.site.forpsi.com/1a/ba/1abaa040-4ecf-442b-8422-2ec21bc34f72.JPG" || set /a CHYBY+=1
echo [181/208] _zdroje\zakazka\12.jpg
if not exist "_zdroje\zakazka\12.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\zakazka\12.jpg" "https://files.site.forpsi.com/29/82/2982f16e-f833-4673-b191-dc45b9890d90.JPG" || set /a CHYBY+=1
echo [182/208] _zdroje\zakazka\13.jpg
if not exist "_zdroje\zakazka\13.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\zakazka\13.jpg" "https://files.site.forpsi.com/1f/d3/1fd3edf2-622f-4e28-a80e-8c2c1eebf9c1.JPG" || set /a CHYBY+=1
echo [183/208] _zdroje\zakazka\14.jpg
if not exist "_zdroje\zakazka\14.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\zakazka\14.jpg" "https://files.site.forpsi.com/24/1a/241a0b9a-57bd-46bd-a880-bb86034f8749.JPG" || set /a CHYBY+=1
echo [184/208] _zdroje\zakazka\15.jpg
if not exist "_zdroje\zakazka\15.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\zakazka\15.jpg" "https://files.site.forpsi.com/5d/e1/5de18677-b304-4be6-81f1-5cfe62b97f18.jpg" || set /a CHYBY+=1
echo [185/208] _zdroje\zakazka\16.jpg
if not exist "_zdroje\zakazka\16.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\zakazka\16.jpg" "https://files.site.forpsi.com/7a/7a/7a7a5857-75ae-4132-a6c8-55ed56e5afc1.jpg" || set /a CHYBY+=1
echo [186/208] _zdroje\zakazka\17.jpg
if not exist "_zdroje\zakazka\17.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\zakazka\17.jpg" "https://files.site.forpsi.com/fd/7e/fd7e454a-5bc3-4a2d-a827-407440a70117.jpg" || set /a CHYBY+=1
echo [187/208] _zdroje\zakazka\18.jpg
if not exist "_zdroje\zakazka\18.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\zakazka\18.jpg" "https://files.site.forpsi.com/f3/63/f36349a9-fef6-4750-b4e0-29a4b9dfca74.jpg" || set /a CHYBY+=1
echo [188/208] _zdroje\zakazka\19.jpg
if not exist "_zdroje\zakazka\19.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\zakazka\19.jpg" "https://files.site.forpsi.com/6f/9d/6f9df70b-3466-41f5-8391-2ab27c59f9ba.jpg" || set /a CHYBY+=1
echo [189/208] _zdroje\zakazka\20.jpg
if not exist "_zdroje\zakazka\20.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\zakazka\20.jpg" "https://files.site.forpsi.com/67/c8/67c854bb-b93d-4a5b-8f9c-b611f17f3d67.jpg" || set /a CHYBY+=1
echo [190/208] _zdroje\zakazka\21.jpg
if not exist "_zdroje\zakazka\21.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\zakazka\21.jpg" "https://files.site.forpsi.com/17/bd/17bd100d-f07c-4643-8b1b-de47838c79c2.jpg" || set /a CHYBY+=1
echo [191/208] _zdroje\zakazka\22.jpg
if not exist "_zdroje\zakazka\22.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\zakazka\22.jpg" "https://files.site.forpsi.com/c8/a3/c8a3269d-c5cc-48cb-a6f2-a667ab4eda08.jpg" || set /a CHYBY+=1
echo [192/208] _zdroje\zakazka\23.jpg
if not exist "_zdroje\zakazka\23.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\zakazka\23.jpg" "https://files.site.forpsi.com/22/93/22931e4e-3c9b-486e-b503-44b73fbe528a.jpg" || set /a CHYBY+=1
echo [193/208] _zdroje\zakazka\24.jpg
if not exist "_zdroje\zakazka\24.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\zakazka\24.jpg" "https://files.site.forpsi.com/aa/65/aa655050-5b1d-4308-be92-822b5fd55289.jpg" || set /a CHYBY+=1
echo [194/208] _zdroje\zakazka\25.jpg
if not exist "_zdroje\zakazka\25.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\zakazka\25.jpg" "https://files.site.forpsi.com/2e/e3/2ee37e1f-5b25-4e54-bd7f-8c995dc07f75.jpg" || set /a CHYBY+=1
echo [195/208] _zdroje\zakazka\26.jpg
if not exist "_zdroje\zakazka\26.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\zakazka\26.jpg" "https://files.site.forpsi.com/d7/88/d7882bd3-a438-4e8f-9ed4-90b48e72a3eb.jpg" || set /a CHYBY+=1
echo [196/208] _zdroje\zakazka\27.jpg
if not exist "_zdroje\zakazka\27.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\zakazka\27.jpg" "https://files.site.forpsi.com/a1/f7/a1f77413-10ef-435b-9e02-ae4f1005a020.jpg" || set /a CHYBY+=1
echo [197/208] _zdroje\zakazka\28.jpg
if not exist "_zdroje\zakazka\28.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\zakazka\28.jpg" "https://files.site.forpsi.com/b6/5a/b65a664f-3bf9-4062-87fe-8bc235cd6852.jpg" || set /a CHYBY+=1
echo [198/208] _zdroje\zakazka\29.jpg
if not exist "_zdroje\zakazka\29.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\zakazka\29.jpg" "https://files.site.forpsi.com/38/63/38635750-ec0f-4145-96f8-b6c4993da667.jpg" || set /a CHYBY+=1
echo [199/208] _zdroje\zakazka\30.jpg
if not exist "_zdroje\zakazka\30.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\zakazka\30.jpg" "https://files.site.forpsi.com/38/59/38593030-4920-44a5-a4ae-96759da7838e.jpg" || set /a CHYBY+=1
echo [200/208] _zdroje\zakazka\31.jpg
if not exist "_zdroje\zakazka\31.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\zakazka\31.jpg" "https://files.site.forpsi.com/62/6f/626fe094-b22d-456d-ae5f-55f7b4f5e350.jpg" || set /a CHYBY+=1
echo [201/208] _zdroje\zakazka\32.jpg
if not exist "_zdroje\zakazka\32.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\zakazka\32.jpg" "https://files.site.forpsi.com/eb/da/ebda07e8-082b-4f04-aa9c-47ae6ab806cf.jpg" || set /a CHYBY+=1
echo [202/208] _zdroje\zakazka\33.jpg
if not exist "_zdroje\zakazka\33.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\zakazka\33.jpg" "https://files.site.forpsi.com/78/5d/785d7ced-7a93-4be6-932c-41575cf2fb00.jpg" || set /a CHYBY+=1
echo [203/208] _zdroje\zakazka\34.jpg
if not exist "_zdroje\zakazka\34.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\zakazka\34.jpg" "https://files.site.forpsi.com/ee/ba/eeba4abd-59bb-4a2a-93f3-0d16fcf193b9.jpg" || set /a CHYBY+=1
echo [204/208] _zdroje\zakazka\35.jpg
if not exist "_zdroje\zakazka\35.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\zakazka\35.jpg" "https://files.site.forpsi.com/9a/1a/9a1a1b8c-a4b2-42a8-a0af-67e1cafdd182.jpg" || set /a CHYBY+=1
echo [205/208] _zdroje\zakazka\36.jpg
if not exist "_zdroje\zakazka\36.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\zakazka\36.jpg" "https://files.site.forpsi.com/0c/4c/0c4c491f-4113-45ab-822f-7479afe9558a.jpg" || set /a CHYBY+=1
echo [206/208] _zdroje\uvod\01.jpg
if not exist "_zdroje\uvod\01.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\uvod\01.jpg" "https://files.site.site3.eu/9d/2a/9d2ad469-a4ef-4faa-a8da-1a69823687b7.jpg" || set /a CHYBY+=1
echo [207/208] _zdroje\uvod\02.jpg
if not exist "_zdroje\uvod\02.jpg" curl -fsSL --create-dirs --retry 2 -o "_zdroje\uvod\02.jpg" "https://files.site.site3.eu/8c/b8/8cb8bcba-3a2e-41ee-9db5-9f6b672c8f13.jpg" || set /a CHYBY+=1
echo [208/208] _zdroje\logo.png
if not exist "_zdroje\logo.png" curl -fsSL --create-dirs --retry 2 -o "_zdroje\logo.png" "https://files.site.forpsi.com/b3/94/b394d741-5896-4fcf-90e7-38827305fc9f.png" || set /a CHYBY+=1
echo.
if %CHYBY%==0 (echo Hotovo, vse stazeno.) else (echo Hotovo, ale %CHYBY% souboru se nepodarilo stahnout. Spust soubor znovu.)
pause
