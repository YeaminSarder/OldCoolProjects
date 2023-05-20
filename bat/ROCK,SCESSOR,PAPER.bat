@echo off
 title Rock, Paper and Scissor v3.1

set wins=0
 set lost=0
 set draw=0
 set cheat=0
 set /a time=%RANDOM:~-1%
 if %time%==0 set %time%==1

:random
 set /a rnd=%random%*99/32767+1

:cheats
 set /a rrd = %RANDOM:~-1%
 :mid
 color 0f
 cls
 echo ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
 echo ³ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿³
echo ³³ Wins : %wins% ³³
echo ³³ Loses : %lost% ³³
echo ³³ Ties : %draw% ³³
echo ³³ Cheats : %cheat%/%time% ³³
echo ³ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ³
echo ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
 echo.
 echo.
 echo [R] Rock [1] Save Profile
 echo [P] Paper [2] About
 echo [S] Scissor 
 echo.
 set /p choice=

if %choice% == R goto rck
 if %choice% == r goto rck 
 if %choice% == S goto sci
 if %choice% == s goto sci
 if %choice% == P goto pap
 if %choice% == p goto pap
 if %choice% == ineedcheat goto cheat
 if %choice% == morewins goto cheat2
 if %choice% == 2 goto abut
 if %choice% == 1 goto save
 if %choice% == 3 goto settings
 goto wrngo

:rck
 set ch=Rock
 goto all

:sci
 set ch=Scissor
 goto all

:pap
 set ch=Paper
 goto all

:all
 if %cheat% GEQ %time% goto comeonman
 if %rnd% GEQ 66 goto rock
 if %rnd% LEQ 42 goto paper
 goto scissors

:rock
 cls
 echo CPU chose Rock!
 echo You chose %ch%!
 if %choice% == R goto tie
 if %choice% == r goto tie
 if %choice% == S goto lose
 if %choice% == s goto lose
 if %choice% == P goto win
 if %choice% == p goto win
 goto mid

:paper
 cls
 echo CPU chose Paper!
 echo You chose %ch%!
 if %choice% == R goto lose
 if %choice% == r goto lose
 if %choice% == S goto win
 if %choice% == s goto win
 if %choice% == P goto tie
 if %choice% == p goto tie
 goto mid

:scissors
 cls
 echo CPU chose Scissor!
 echo You chose %ch%!
 if %choice% == S goto tie
 if %choice% == s goto tie
 if %choice% == P goto lose
 if %choice% == p goto lose
 if %choice% == R goto win
 if %choice% == r goto win
 goto mid

:tie
 color 0b
 echo.
 echo.
 echo.
 echo IT IS
 echo.
 echo ohhhhhhhys/` 
 echo dMMs///oyNMNo 
 echo dMM: `dMMo -dds/ymh +ydmmdy/ sdd` .ddh` `hh` 
 echo dMM: -MMm /MMMh+/: +:..-dMM/ /MMs sMMM+ sM+ 
 echo dMM: -MMd /MMh `/ossmMM+ dMM.`NmyMN`-Mm 
 echo dMM: `dMM: /MMh oMMh+/dMM+ -MMhsM/-MM+dM: 
 echo dMMo///+sNMN/ /MMh dMMo-/mMMs` yMMNm hMNMy 
 echo sdddddddyo: -ddo .sdmds-ymms .hdd/ -ddh` 
 set /a draw=%draw% + 1
 pause >nul
 goto random

:lose
 color 0c
 echo.
 echo.
 echo.
 echo.
 echo ..` 
 echo `MMN 
 echo `MMN .-::. -:::-` `-::. 
 echo `MMN `omMmhdMNy. sNMdhhdo .hMNhdMm+ 
 echo YOU `MMN yMM+ .NMN` .MMN:` .NMm` yMM: 
 echo `MMN `MMM yMM+ :ymMMmy: +MMNmmmmmmo 
 echo `MMN dMM: `mMM. ./mMM/ .MMm. 
 echo `MMMhhhhhhy .yMNyosmMm: -dyoosNMd. :mMMdyyyh+ 
 echo /////////: `:+++/. `:/+++/- ./+++//. 
 set /a lost=%lost% + 1
 pause >nul
 goto random

:win
 color 0a
 echo.
 echo.
 echo.
 echo.
 echo.
 echo -ss: +ss` os: .ss+ -sss` +s+ 
 echo .MMm .MMM+ -MN` -MMd /MMMm- dMd 
 echo yMM: yMNMm dM+ -MMd /MMMMN+ dMd 
 echo YOU :MMh .MmsMM: /Mm -MMd /MM/hMMs dMd 
 echo dMM.sM/.MMh`NM: -MMd /MM: sMMd.dMd 
 echo +MMhMm yMMyMh -MMd /MM: /NMNNMd 
 echo `NMMM/ -MMMM. -MMd /MM: -mMMMd 
 echo ommd hmms -mmh :mm- `hmmh 
 set /a wins=%wins% + 1
 pause >nul
 goto random

:cheat
 if %rnd% GEQ 66 set cpu=Rock
 if %rnd% LEQ 42 set cpu=Paper
 if %rnd%==43 set cpu=Scissor
 if %rnd%==44 set cpu=Scissor
 if %rnd%==45 set cpu=Scissor
 if %rnd%==46 set cpu=Scissor
 if %rnd%==47 set cpu=Scissor
 if %rnd%==48 set cpu=Scissor
 if %rnd%==49 set cpu=Scissor
 if %rnd%==50 set cpu=Scissor
 if %rnd%==51 set cpu=Scissor
 if %rnd%==52 set cpu=Scissor
 if %rnd%==53 set cpu=Scissor
 if %rnd%==54 set cpu=Scissor
 if %rnd%==55 set cpu=Scissor
 if %rnd%==56 set cpu=Scissor
 if %rnd%==57 set cpu=Scissor
 if %rnd%==58 set cpu=Scissor
 if %rnd%==59 set cpu=Scissor
 if %rnd%==60 set cpu=Scissor
 if %rnd%==61 set cpu=Scissor
 if %rnd%==62 set cpu=Scissor
 if %rnd%==63 set cpu=Scissor
 if %rnd%==64 set cpu=Scissor
 if %rnd%==65 set cpu=Scissor
 set /a cheat=%cheat% + 1

:popup
 set num=%random%
 if exist err%num%.vbs goto num
 echo X=MsgBox("Computer Choise is %cpu%. ",0+64,"Cheat Activated!") >> "err%num%.vbs"
 echo X=MsgBox("Cheat Used: %cheat%/%time%. ",0+48,"Cheat Limit is %time%") >> "err%num%.vbs"
 start err%num%.vbs
 ping localhost -n 2 >nul
 del err%num%.vbs
 goto mid

:cheat2
 set /a wins=%wins%+1
 set /a cheat=%cheat%+1
 goto mid

:comeonman
 cls
 color 0c
 echo.
 echo `.-::///+///:-. 
 echo -/oyhhyso+//:::::/+osyhhyo/. 
 echo .+hhs/-` `-+shy/` 
 echo -hh+` .ods. 
 echo .yh- `/do` 
 echo :m+ `sd. 
 echo /N: om. 
 echo .N/ yd 
 echo yd :` `/ `N/ 
 echo No +m` `N+ hy 
 echo N+ sd mo sd 
 echo ds /N` .M: yh 
 echo +m` dy yh mo 
 echo `mo -M. ` ` -M- +m` 
 echo :N: `M/ ./osyhdmmmo` `smmmdhyso/. /M` /m: 
 echo /m/.M: +NMMMMMMMMMM/ oMMMMMMMMMMm/ :M.od: 
 echo -hdN` hMMMMMMMMMMN- :NMMMMMMMMMMs `Nms. 
 echo --. `my -NMMMMMMMMm: /NMMMMMMMMm. yd .::- 
 echo sh+sh/ .M: /mMMMMMMy. ``` -hMMMMMMm- :M` `sho+d+ 
 echo -M- -do .M- .ohddy: /d/oh: `/hddh+. -M. `dy` +N` 
 echo `oN .hy:. m+ `` oMM/sMN/ `` om .:hs` -N/ 
 echo /hy- `:oys+-`/m/` -MMM/sMMN` .+m:.:oyyo- :yh- 
 echo om- ./oysyddyo/-` +MMM/oMMM- `-/shddyyyo:. /N/ 
 echo /hso+oosso/.` .:ohNmomys- -mmo`.ymm` -shm+Nmy+:. `-/osso++osh. 
 echo `.----..-+sys/-` -N+o//m+ .` .` +m/o:sd. `-+sys+-..----. 
 echo `-/sys+-` +N`y`+N.` ``.N/-o.M: .-+sys/-` 
 echo `-/sys+/M-:+`y-o:o:+://:+/+-o-y y`+N:oyyo:. 
 echo ./yM` y y-s`s s /-.+.+`s-y`y :Ms:. 
 echo .:yM` o:s.y-y:y:o+/s/s-y`s+: -Mo-` 
 echo `-+yyo/N/ -+/s.s`s`/:.o.o.y/+- om/syyo:.` 
 echo `.--.``.:oyys/. om. .-::+:+//+::-. -N/ .:oyyo/.``.--.` 
 echo shsoossss+:. `-+dd: `+mm/.` `-+ssssoosho 
 echo dy` `./shs/.:hy:`` `.+hy.-/yys/.` .yd 
 echo `odo` `:oyy+- -oyys+//:::://osyy+. -+yyo:` .sd+` 
 echo `yd :ds:` `.-///++//:-. `:sd- my` 
 echo :M` `+m: /N: `M/ 
 echo `ds+hy. :hy+yh` 
 echo ::. .:- 
 echo. 
 echo STOP CHEATING DUDE, YOU HAVE EXCEEDED YOUR CHEAT LIMITS !!
 pause >nul
 exit

:abut
 cls
 title About - Rock, Paper and Scissors v3.1
 echo.
 echo [1] Type "ineedcheat" to activate cheat.
 echo [2] Type "morewins" to increase your wins by 1.
 echo.
 pause >nul
 goto mid

:save
 title Save - Rock, Paper and Scissors v3.1
 cls
 color 0a
 echo.
 echo Enter your name (No Spacebar):
 echo.
 set /p name=
 cls
 set /a play=%lost%+%draw%+%wins%
 echo Player's Name: %name%, Cheat Used: %cheat%/%time% time(s), Total Lose: %lost%, Total Draw: %draw%, Total Win: %wins%, Total Game Played: %play% > %name%_Stats.txt
 echo %name%'s Stats is saved inside the directory.
 pause >nul
 goto mid