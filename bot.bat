
@echo off

REM Fetch parameters
REM -de
if "%1"=="-de" set lang=de
if "%2"=="-de" set lang=de
if "%3"=="-de" set lang=de
if "%4"=="-de" set lang=de
if "%5"=="-de" set lang=de
if "%6"=="-de" set lang=de
if "%7"=="-de" set lang=de
if "%8"=="-de" set lang=de
if "%9"=="-de" set lang=de

REM -nodemon
REM Directly starting the bot with the preset language over nodemon.js (standard)
if "%1"=="-nodemon" set mod=nodemon
if "%2"=="-nodemon" set mod=nodemon
if "%3"=="-nodemon" set mod=nodemon
if "%4"=="-nodemon" set mod=nodemon
if "%5"=="-nodemon" set mod=nodemon
if "%6"=="-nodemon" set mod=nodemon
if "%7"=="-nodemon" set mod=nodemon
if "%8"=="-nodemon" set mod=nodemon
if "%9"=="-nodemon" set mod=nodemon

REM BotBat Version
set ver=1.3
REM Weegeebot Version
set WeegeeVer=1.0


:BotBat 
REM Check botbat folder
if not exist "%cd%\botbat" (
REM Jumping to Batch Setup if "botbat" folder doesn't exist
goto BatSetup 
) else (
REM Everything is fine, load the interface routine
goto loadLang
)

:BatSetup
REM Folder setup
md botbat
cd botbat
echo %lang%>>lang.cfg
cd ..
goto loadLang

:loadLang
set /p lang=<botbat\lang.cfg

:BotBat
if "%mod%"=="nodemon" goto nodemon

echo BotBat Ver %ver%   ³
echo ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
title BotBat
color 0f

if not "%lang%"=="de" echo Enter 'help' to get a list of the batch-specific commands. Start the bot regularly with 'bot'.
if "%lang%"=="de" echo Gib 'hilfe' ein, um eine Auflistung der batchspezifischen Befehle zu erhalten. Starte den Bot normal mit 'bot'.


:cmd
set /p exec=¯ 
REM help
if "%lang%"=="de" if "%exec%"=="hilfe" goto help
if not "%lang%"=="de" if "%exec%"=="help" goto help
REM cmd on
if "%lang%"=="de" if "%exec%"=="cmd an" goto cmdOn
if not "%lang%"=="de" if "%exec%"=="cmd on" goto cmdOn
REM cmd off
if "%lang%"=="de" if "%exec%"=="cmd aus" goto cmdOff
if not "%lang%"=="de" if "%exec%"=="cmd off" goto cmdOff
REM language
if "%lang%"=="de" if "%exec%"=="sprache" goto langSetup
if not "%lang%"=="de" if "%exec%"=="lang" goto langSetup
REM readme
if "%lang%"=="de" if "%exec%"=="liesmich" goto readme
if not "%lang%"=="de" if "%exec%"=="readme" goto readme
REM credit
if "%exec%"=="ver" goto ver
REM pm2 de
if "%exec%"=="bot-de" goto pm2-de
REM credit
if "%exec%"=="bot-en" goto pm2-en
REM support
if "%exec%"=="support" goto support
REM nodemon
if "%exec%"=="bot" goto nodemon
REM install
if "%exec%"=="install" goto install
REM debug
if "%exec%"=="debug" goto debug
REM also debug
if "%exec%"=="node" goto debug

%exec%
goto cmd

REM Command List

:help
if not "%lang%"=="de" echo ÚÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
if not "%lang%"=="de" echo ³                 COMMAND LIST                º
if not "%lang%"=="de" echo ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¹
if not "%lang%"=="de" echo ³bot           -  Initializes bot.js.         º
if not "%lang%"=="de" echo ³cmd [on/off]  -  Switch among Windows CMD    º
if not "%lang%"=="de" echo ³                 and BotBat prompt. Useful inº
if not "%lang%"=="de" echo ³                 case of command conflicts.  º
if not "%lang%"=="de" echo ³debug         -  Uses node.js instead of     º
if not "%lang%"=="de" echo ³                 default nodemon.js.         º
if not "%lang%"=="de" echo ³                 Useful for debug purposes.  º
if not "%lang%"=="de" echo ³install       -  Installs discord.js         º
if not "%lang%"=="de" echo ³lang          -  Change language.            º
if not "%lang%"=="de" echo ³node          -  See 'debug'.                º
if not "%lang%"=="de" echo ³readme        -  Opens ReadMe file.          º
if not "%lang%"=="de" echo ³support       -  Lists a few ways for supportº
if not "%lang%"=="de" echo ³ver           -  About BotBat for WeegeeBot  º
if not "%lang%"=="de" echo ÀÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼

if "%lang%"=="de" echo ÚÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
if "%lang%"=="de" echo ³                 BEFEHLSLISTE                 º
if "%lang%"=="de" echo ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¹
if "%lang%"=="de" echo ³bot           -  Initialisiert bot.js.        º
if "%lang%"=="de" echo ³cmd [an/aus]  -  Wechsle zwischen Eingabeauf- º
if "%lang%"=="de" echo ³                 forderung und der BotBat-    º
if "%lang%"=="de" echo ³                 Prompt. Ntzlich, falls Be-  º
if "%lang%"=="de" echo ³                 Fehlskonflikte bestehen.     º
if "%lang%"=="de" echo ³debug         -  Nutze node.js statt stan-    º
if "%lang%"=="de" echo ³                 dardlicher nodemon.js. Ntz- º
if "%lang%"=="de" echo ³                 lich fr Debugzwecke.        º
if "%lang%"=="de" echo ³install       -  Installiert discord.js.      º
if "%lang%"=="de" echo ³node          -  Siehe 'debug'.               º
if "%lang%"=="de" echo ³liesmich      -  ™ffnet LIESMICH-Datei.       º
if "%lang%"=="de" echo ³sprache       -  ndere Sprache.              º
if "%lang%"=="de" echo ³support       -  Listet ein paar Support-Quel-º
if "%lang%"=="de" echo ³                 len auf.                     º
if "%lang%"=="de" echo ³ver           -  šber BotBat fr WeegeeBot.   º
if "%lang%"=="de" echo ÀÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼
goto cmd

:install

npm install --save discord.js

:cmdOff
if not "%lang%"=="de" echo Windows CMD is already inferior to BotBat.
if "%lang%"=="de" echo Windows CMD ist BotBat bereits untergeordnet.
goto cmd

:cmdIsOn
if not "%lang%"=="de" echo BotBat is already inferior to Windows CMD.
if "%lang%"=="de" echo BotBat ist Windows CMS bereits untergeordnet.
goto cmdS

:cmdOn
echo.
if not "%lang%"=="de" echo BotBat is now inferior to the Windows CMD. Return with 'cmd off'.
if "%lang%"=="de" echo BotBat wurde zugunsten der Eingabeaufforderung untergeordnet. Kehre mit 'cmd aus' zurck.

:cmdS
set /p exec=
if "%lang%"=="de" if "%exec%"=="cmd an" goto cmdIsOn
if not "%lang%"=="de" if "%exec%"=="cmd on" goto cmdIsOn

if "%lang%"=="de" if "%exec%"=="cmd aus" goto cmdOff
if not "%lang%"=="de" if "%exec%"=="cmd off" goto cmdOff
%exec%
goto cmdS

:nodemon
title WeegeeBot %WeegeeVer%
@echo on
if not "%lang%"=="de" nodemon bot.js
if "%lang%"=="de" nodemon de\bot-de.js

:debug
title WeegeeBot %WeegeeVer% -debug
if not "%lang%"=="de" node bot.js
if "%lang%"=="de" node de\bot-de.js

:pm2-de
pm2 start %CD%\de\bot-de.js --name="bot-DE"

:pm2-en
pm2 start bot.js --name="bot-EN"

:langSetup
if not "%lang%"=="de" echo There can be only one:
if not "%lang%"=="de" echo ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
if not "%lang%"=="de" echo [de] - German   ³
if not "%lang%"=="de" echo [en] - English  ³
if not "%lang%"=="de" echo ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ

if "%lang%"=="de" echo Es kann nur eine(n) geben:
if "%lang%"=="de" echo ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
if "%lang%"=="de" echo [de] - Deutsch  ³
if "%lang%"=="de" echo [en] - Englisch ³
if "%lang%"=="de" echo ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
set /p inp=
if "%inp%"=="de" goto langSetup_de
if "%inp%"=="en" goto langSetup_en

:langSetup_de
set lang="de"
del /Q botbat\lang.cfg
echo de>>botbat\lang.cfg
cls
goto loadLang

:langSetup_en
set lang="en"
del /Q botbat\lang.cfg
echo en>>botbat\lang.cfg
cls
goto loadLang

:readme
if not "%lang%"=="de" start README.HTML
if "%lang%"=="de" start de\LIESMICH.HTML
goto cmd

:ver
cls
echo BotBat Ver %ver%
echo ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
if not "%lang%"=="de" echo Credits
if "%lang%"=="de" echo Danksagung
echo ÄÄÄÄÄÄÄÄÄÄ
if not "%lang%"=="de" echo Developers
if "%lang%"=="de" echo Entwickler
echo ÄÄÄÄÄÄÄÄÄÄ
echo HoubkneghteS    -   Adam Simons
echo ÄÄÄÄÄÄÄÄÄÄ
pause
cls
goto cmd

:support
echo Support
echo ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
if "%lang%"=="de" echo Sourceforge-Projektseite:
if not "%lang%"=="de" echo Sourceforge Project Page:
echo https://sourceforge.net/projects/weegeebot/
echo ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
if "%lang%"=="de" echo Discord-Server:
if not "%lang%"=="de" echo Discord Server:
echo https://discord.gg/xfpDKsf
goto cmd

REM Custom commands
REM Remember to add 'goto cmd' after a new command!

REM 