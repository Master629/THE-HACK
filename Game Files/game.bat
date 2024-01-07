@echo off
color 0A

cls
echo please put this window into fullscreen
pause 
cls


echo type your name
set /p name=
goto menu
cls


:menu
set score=000
echo Welcome %name% to THE HACK !
echo Made By: Owen Lebakken
echo What do you know about viruses?
echo Version 1.0 ID: DG1.0
echo 1) start
echo 2) how to play
echo 3) Exit 
echo 4) music 
time /t
date /t
set /p number= 
if %number% == 1 goto StartGame
if %number% == 2 goto help
if %number% == 3 goto exit
if %number% == 4 goto dywmusic
goto menu



:dywmusic
echo Do you want music? (y/n)
set /p music= 
if /p %music% == y goto start music
if /p %music% == n goto menu
goto dywmusic

:music
color 0c
echo ****MUSIC IS NOT WORKING****
echo
echo **I am curently working on the music feature**
echo   Click any key to go back the the menu
pause
goto menu

:startgame
echo Do you want to start the quiz? (y/n)
set /p start=
if %start% == y goto level1
if %start% == n goto menu
goto startgame

:help
cls
echo Press the number of the answer then hit enter.
echo go back? (y/n)
set /p menu=
if %menu% == y goto menu
if %menu% == n goto exit
goto help

:exit
echo Thanks %name% for playing!
timeout /t 10
exit


:level1
cls 
echo what is a Trojan Horse
echo 1) A game where you shoot zombies.
echo 2) Malware that misleads users of its true intent.
echo 3) Malware that uses all your ram and crashes your computer.
set /p answer1= 
if %answer1% == 1 goto wrong1
if %answer1% == 2 goto correct1
if %answer1% == 3 goto wrong1
goto level1
 
:correct1
cls
echo You are right! Next Level? (y/n)
set score=100
set /p NL1=
if %NL1% == y goto level2
if %NL1% == n goto menu
goto correct1

:wrong1
cls
Echo Sadly, you were wrong Retry? (y/n)
set /p WA1= 
if %WA1% == y goto level1
if %WA1% == n goto menu
goto wrong1

:level2
cls
echo What is BonziBuddy
echo 1) BonziBuddy is a virtual assistant that is actually spyware and adware.
echo 2) BonziBuddy is a monkey on your computer
echo 3) BonziBuddy is a real monkey that lives inside of your computer
echo 4) BonziBuddy is a fake rumor
set /p aa= 
if %aa% == 1 goto correct2
if %aa% == 2 goto wrong2
if %aa% == 3 goto wrong2
if %aa% == 4 goto wrong2
goto level2

:correct2
cls 
echo You are right! Next level? (y/n)
set score=200
set /p ka= 
if %ka% == y goto level3
if %ka% == n goto menu
goto correct2

:wrong2
cls
echo Sadly, you were wrong Retry? (y/n)
set/p retry=
if %retry% == y goto level3
if %retry% == n goto menu
goto wrong2

:level3
cls
echo What is the "Windows sandbox" feature in "Windows Features" for?
echo 1) It pops up a sandbox through your speakers.
echo 2) A virtual Windows running computer.
echo 3) A windows running computer.
set /p ka= 
if %ka% == 1) goto wrong3
if %ka% == 2) goto correct3
if %ka% == 3) goto wrong3
goto level3

:correct3
cls
echo You are correct! 
echo next level? (y/n)
set score=300
set /p nl3 = 
if /p %nl3% == y goto level4
if /p %nl3% == n goto exit
goto correct3



:wrong3
cls
echo sadly, you were wrong Retry? (y/n)
set/p retry= 
if %retry% == y goto level3
if %retry% == n goto exit
goto wrong3

:level4
echo what is Android Studio?
echo 1) an Android development app
echo 2) a Android phone
echo 3) an Android running computer
set /p answer4 = 
if /p %answer4% == 1 goto right4
if /p %answer4% == 2 goto wrong4
if /p %answer4% == 3 goto wrong4
goto level4

:wrong4
echo You are wrong. Try again? (y/n)
set /p ta4 = 
if /p %ta4% == y goto level4
if /p %ta4% == n goto exit
goto wrong4

:right4
echo you are correct!
echo Next level (y/n)
set score=400
set /p nl4 = 
if /p %nl4% == y goto level5
if /p %nl4% == n goto exit
goto right4

:level5
echo what is 