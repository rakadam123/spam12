
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

echo BotBat Ver %ver%   �
echo �������������������
title BotBat
color 0f

if not "%lang%"=="de" echo Enter 'help' to get a list of the batch-specific commands. Start the bot regularly with 'bot'.
if "%lang%"=="de" echo Gib 'hilfe' ein, um eine Auflistung der batchspezifischen Befehle zu erhalten. Starte den Bot normal mit 'bot'.


:cmd
set /p exec=� 
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
if not "%lang%"=="de" echo ���������������������������������������������ͻ
if not "%lang%"=="de" echo �                 COMMAND LIST                �
if not "%lang%"=="de" echo ���������������������������������������������Ĺ
if not "%lang%"=="de" echo �bot           -  Initializes bot.js.         �
if not "%lang%"=="de" echo �cmd [on/off]  -  Switch among Windows CMD    �
if not "%lang%"=="de" echo �                 and BotBat prompt. Useful in�
if not "%lang%"=="de" echo �                 case of command conflicts.  �
if not "%lang%"=="de" echo �debug         -  Uses node.js instead of     �
if not "%lang%"=="de" echo �                 default nodemon.js.         �
if not "%lang%"=="de" echo �                 Useful for debug purposes.  �
if not "%lang%"=="de" echo �install       -  Installs discord.js         �
if not "%lang%"=="de" echo �lang          -  Change language.            �
if not "%lang%"=="de" echo �node          -  See 'debug'.                �
if not "%lang%"=="de" echo �readme        -  Opens ReadMe file.          �
if not "%lang%"=="de" echo �support       -  Lists a few ways for support�
if not "%lang%"=="de" echo �ver           -  About BotBat for WeegeeBot  �
if not "%lang%"=="de" echo ���������������������������������������������ͼ

if "%lang%"=="de" echo ����������������������������������������������ͻ
if "%lang%"=="de" echo �                 BEFEHLSLISTE                 �
if "%lang%"=="de" echo ����������������������������������������������Ĺ
if "%lang%"=="de" echo �bot           -  Initialisiert bot.js.        �
if "%lang%"=="de" echo �cmd [an/aus]  -  Wechsle zwischen Eingabeauf- �
if "%lang%"=="de" echo �                 forderung und der BotBat-    �
if "%lang%"=="de" echo �                 Prompt. N�tzlich, falls Be-  �
if "%lang%"=="de" echo �                 Fehlskonflikte bestehen.     �
if "%lang%"=="de" echo �debug         -  Nutze node.js statt stan-    �
if "%lang%"=="de" echo �                 dardlicher nodemon.js. N�tz- �
if "%lang%"=="de" echo �                 lich f�r Debugzwecke.        �
if "%lang%"=="de" echo �install       -  Installiert discord.js.      �
if "%lang%"=="de" echo �node          -  Siehe 'debug'.               �
if "%lang%"=="de" echo �liesmich      -  �ffnet LIESMICH-Datei.       �
if "%lang%"=="de" echo �sprache       -  �ndere Sprache.              �
if "%lang%"=="de" echo �support       -  Listet ein paar Support-Quel-�
if "%lang%"=="de" echo �                 len auf.                     �
if "%lang%"=="de" echo �ver           -  �ber BotBat f�r WeegeeBot.   �
if "%lang%"=="de" echo ����������������������������������������������ͼ
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
if "%lang%"=="de" echo BotBat wurde zugunsten der Eingabeaufforderung untergeordnet. Kehre mit 'cmd aus' zur�ck.

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
if not "%lang%"=="de" echo ���������������Ŀ
if not "%lang%"=="de" echo [de] - German   �
if not "%lang%"=="de" echo [en] - English  �
if not "%lang%"=="de" echo �����������������

if "%lang%"=="de" echo Es kann nur eine(n) geben:
if "%lang%"=="de" echo ���������������Ŀ
if "%lang%"=="de" echo [de] - Deutsch  �
if "%lang%"=="de" echo [en] - Englisch �
if "%lang%"=="de" echo �����������������
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
echo ����������������
if not "%lang%"=="de" echo Credits
if "%lang%"=="de" echo Danksagung
echo ����������
if not "%lang%"=="de" echo Developers
if "%lang%"=="de" echo Entwickler
echo ����������
echo HoubkneghteS    -   Adam Simons
echo ����������
pause
cls
goto cmd

:support
echo Support
echo ����������������
if "%lang%"=="de" echo Sourceforge-Projektseite:
if not "%lang%"=="de" echo Sourceforge Project Page:
echo https://sourceforge.net/projects/weegeebot/
echo ����������������
if "%lang%"=="de" echo Discord-Server:
if not "%lang%"=="de" echo Discord Server:
echo https://discord.gg/xfpDKsf
goto cmd

REM Custom commands
REM Remember to add 'goto cmd' after a new command!

REM 