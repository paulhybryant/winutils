@echo off
:: change this to whatever you need
set targetfolder=D:\Users\Yu\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
:: If you don't want the extension, change the following to 
shortcut /f:"%targetfolder%\%~n1.lnk" /a:c /t:%1
:: shortcut /f:"%targetfolder%\%~n1%~x1.lnk" /a:c /t:%1