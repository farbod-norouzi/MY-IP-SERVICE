@echo off

echo                                  . .   . . .. . . . .     
echo                                  . .   . . .. . . . .
echo                                        . .        . .
echo ..            ..                 . .   . .        . .
echo . .          . .    .     .      . .   . .        . .
echo .  .        .  .    .     .      . .   . .. . . . . .
echo .  .      .    .    .     .      . .   . .. . . . . .
echo .   .    .     .    . . . .      . .   . .   . .
echo .    .  .      .          .      . .   . .
echo .     ..       .          .      . .   . .
echo .              .    .     .      . .   . .
echo .              .    . . . .      . .   . .
echo.
@Echo off

Title MY IP SERVICE 

:Menu

Color 06

Echo ______________________________________

Echo.

Echo Please Choose one of the following menu

Echo Press 1 for open MY IP

Echo Press 2 for open Change MY IP

Echo ______________________________________

SET /P Menus=Type 1 or 2 and Press Enter: 

IF %Menus%==1 goto ip
IF %Menus%==2 goto ch

:ip

SET /P input=Do you want to see your device's IP? (Y/N)

IF %input%==Y goto config
IF %input%==N goto :Menus
IF %input%==y goto config
IF %input%==n goto :Menus

:config
echo.
echo Receiving your device's IP...
echo.
echo IP received!
echo.
echo Preparing to display IP...
echo.
echo ________________________________________
echo.
echo                  Details 
echo ________________________________________
echo.
ipconfig

:print
SET /P inp=Do you want to print your device's IP? (Y/N)

IF %inp%==Y goto print
IF %inp%==N goto :Menu
IF %inp%==y goto print
IF %inp%==n goto :Menu

:print
md Details\MY_IP
ipconfig >Details\MY_IP\IP.txt
cls
goto Menu

:ch

SET /P in=echo Do you want to Change your device's IP? (Y/N)

IF %in%==Y goto venom
IF %in%==y goto venom
IF %in%==N goto Menu
IF %in%==n goto Menu

:venom
Echo ______________________________________
Echo.

Echo Please Choose one of the following menu

Echo Press 1 for Windows 7
Echo Press 2 for Windows 8
Echo Press 3 for Windows 10
echo.

Echo ______________________________________

SET /P Change=Type 1 to 3 and Press Enter:

IF %Change%==1 goto windows7
IF %Change%==2 goto windows8
IF %Change%==3 goto windows10

:windows7

SET /P 7=Please specify your Windows System type (64 bit/32 bit) :
echo.
echo Your operating system %"7"% type was accepted!
echo Providing the necessary conditions...
echo.
ipconfig /release
echo.
echo Necessary conditions were provided!
echo Changing the IP of your device ...
echo Changing in
echo.
echo 3
echo 2
echo 1
echo Changes made successfully!
echo.
echo Waiting to see details
echo ________________________________________
echo.
echo                  Details 
echo ________________________________________
echo.
ipconfig /renew
echo.
echo ________________________________________
echo.

:niw7
md Details\Windows7
ipconfig /renew >Details\Windows7\Details.txt
SET /P win7=Do you want to print your device's new IP? (Y/N)

IF %win7%==Y goto niw7
IF %win7%==N goto :Menu
IF %win7%==y goto niw7
IF %win7%==n goto :Menu
echo.
echo Type exit to close the program or m to return to the menu :
SET /P back= :Type something


:windows8

SET /P 8=Please specify your Windows System type (64 bit/32 bit) : 
echo.
echo Your operating system %"8"% type was accepted!
echo Providing the necessary conditions...
echo.
ipconfig /release
echo.
echo Necessary conditions were provided!
echo Changing the IP of your device ...
echo Changing in
echo.
echo 3
echo 2
echo 1
echo Changes made successfully!
echo.
echo Waiting to see details
echo ________________________________________
echo.
echo                  Details 
echo ________________________________________
echo.
ipconfig /renew
echo.
echo ________________________________________
echo.
:niw8
md Details\Windows8
ipconfig /renew >Details\Windows8\Details.txt
SET /P win8=Do you want to print your device's new IP? (Y/N)

IF %win8%==Y goto niw8
IF %win8%==N goto :Menu
IF %win8%==y goto niw8
IF %win8%==n goto :Menu
echo.
echo Type exit to close the program or m to return to the menu :
SET /P back= :Type something

:windows10

SET /P 10=Please specify your Windows System type (64 bit/32 bit) : 
echo.
echo Your operating system %"10"% type was accepted!
echo Providing the necessary conditions...
echo.
ipconfig /release
echo.
echo Necessary conditions were provided!
echo Changing the IP of your device ...
echo Changing in
echo.
echo 3
echo 2
echo 1
echo Changes made successfully!
echo.
echo Waiting to see details
echo ________________________________________
echo.
echo                  Details 
echo ________________________________________
echo.
ipconfig /renew
echo.
echo ________________________________________
echo.
:niw10
md Details\Windows10
ipconfig /renew >Details\Windows10\Details.txt
SET /P win10=Do you want to print your device's new IP? (Y/N)

IF %win10%==Y goto niw10
IF %win10%==N goto :Menu
IF %win10%==y goto niw10
IF %win10%==n goto :Menu
echo.
echo Type exit to close the program or m to return to the menu :
SET /P back= :Type something


