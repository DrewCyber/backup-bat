For /f "tokens=1-3 delims=/. " %%a in ('date /t') do (set mydate=%%c-%%b-%%a)
For /f "tokens=1-2 delims=/:" %%a in ('time /t') do (set mytime=%%a%%b)
echo %mydate%_%mytime%

e:\tools\7za.exe a -tzip -r -y "e:\backup_app\%mydate%_%mytime%_all-apps.zip" c:\sites\*


forfiles -p "E:\backup_app" -s -m *.* /D -30 /C "cmd /c del @path"
