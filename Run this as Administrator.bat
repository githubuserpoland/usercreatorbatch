@echo off
title  


:menu
echo Welcome in user creator.
echo 1 - New user
echo 2 - Change password
echo 3 - Delete User
set /p sethc=Choice: 
if %sethc%==1 goto newuser
if %sethc%==2 goto chgpass
if %sethc%==3 goto deluser




:accept
cls
echo Done!
timeout 4 >nul
cls
goto menu

:newuser
cls
set /p newuseruser=New UserName: 
cls
set /p newuserpassword=Password: 
cls
net user %newuseruser% %newuserpassword% /add
goto accept


:chgpass
cls
set /p chgpasstuser=User target: 
cls
set /p chgpassnpass=New Password: 
net user %chgoasstuser% %chgpassnpass%
goto accept


:deluser
cls
set /p delusertuser=User target: 
net user %delusertuser% /del
goto accept

