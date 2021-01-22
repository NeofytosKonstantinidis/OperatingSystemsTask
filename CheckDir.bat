@Echo Off
:START
ECHO ----------------------------------------------------------
Echo Please Give me the path of the folder.(example: "G:\NetbeansProjects")
ECHO ----------------------------------------------------------
ECHO.
SET /P Input=Type it here:
cd /d %Input%
path=c:\windows\system32
cls
GOTO COUNT
:COUNT
ECHO ----------------------------------------------------------
Echo The folder you selected is: %Input%
ECHO ----------------------------------------------------------
ECHO 1 - Find all the files in this folder
ECHO 2 - Find all the subfolders in this folder
ECHO 3 - Find the .jpg files in this folder
ECHO 4 - Find the .png files in this folder
ECHO 5 - Find the files with a custom conclusion in this folder
ECHO 6 - Exit
ECHO ----------------------------------------------------------
ECHO.
SET /P M=Type 1, 2, 3, 4, 5 or 6 then press ENTER:
cls
ECHO ----------------------------------------------------------
ECHO 1 - Only count the files contained in this folder
ECHO 2 - See every file's Directory,name, size and file count.
ECHO ----------------------------------------------------------
SET /P Answer=Type 1 or 2 then press ENTER:
cls
IF %M%==1 GOTO ALLFILES
IF %M%==2 GOTO FOLDER
IF %M%==3 GOTO JPG
IF %M%==4 GOTO PNG
IF %M%==5 GOTO CUSTOM
IF %M%==6 GOTO EOF

:JPG
ECHO .jpg Files Count:
IF %Answer%==1 dir /s /b *.jpg | find /c ".jpg"
IF %Answer%==2 dir /s *.jpg
pause
GOTO NEWMENU

:PNG
IF %Answer%==1 ECHO .png Files Count: && dir /s /b *.png | find /c ".png"
IF %Answer%==2 dir /s *.png
pause
GOTO NEWMENU

:CUSTOM
SET /P conclusion=Type the conclusion here:
cls
IF %Answer%==1 ECHO .%conclusion% Files Count: && dir /s /b *.%conclusion% | find /c ".%conclusion%"
IF %Answer%==2 ECHO .%conclusion% File Conclusion && dir /s *.%conclusion%
pause
GOTO NEWMENU

:FOLDER
IF %Answer%==1 ECHO Subfolders Count: && dir /s /b /o:n /ad | find /c ":"
IF %Answer%==2 dir /s /o:n /ad
pause
GOTO NEWMENU

:ALLFILES
IF %Answer%==1 ECHO All Files Count: && dir /s /b | find /c ":"
IF %Answer%==2 dir /s
pause
GOTO NEWMENU
v
:NEWMENU
cls
ECHO ----------------------------------------------------------
ECHO 1 - Go Back to Start
ECHO 2 - Find different type of files
ECHO 3 - Exit
ECHO ----------------------------------------------------------
ECHO.
SET /P S=Type 1, 2 or 3 then press ENTER:
IF %S%==1 GOTO START
IF %S%==2 GOTO COUNT
IF %S%==3 GOTO EOF
