@echo off

setlocal enabledelayedexpansion

set INPUT=./11
set OUTPUT_S=./22
set OUTPUT_C=./33

for %%i in (%INPUT%/*) do ( 
set a=%%i
set b=!a:~0,-5!
 .\tabtoy.exe -mode=v2 -input_dir=%INPUT% -output_dir=%OUTPUT_S% -json_out=!b!.json !a!
.\tabtoy.exe -mode=v2 -input_dir=%INPUT% -output_dir=%OUTPUT_C% -lua_out=!b!.lua !a!
)

pause