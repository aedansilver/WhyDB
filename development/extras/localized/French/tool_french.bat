@ECHO OFF
TITLE Outil d'installation de WhyDB en Fran็ais
COLOR 0A

:TOP
CLS
ECHO.
ECHO          ษออออออออออออออออออออออออออออออออป
ECHO          บ                                บ
ECHO          บ      Outil d'installation      บ
ECHO          บ      de WhyDB en Fran็ais      บ
ECHO          บ         par ClaudeNegm         บ
ECHO          บ                                บ
ECHO          ศออออออออออออออออออออออออออออออออผ
ECHO.
ECHO            ##############################
ECHO            #    http://www.whydb.org    #
ECHO            ##############################
ECHO.
ECHO    Veuillez entrer les infos. de MySQL...
ECHO.
SET /p host=  L'adresse du server MySQL (localhost par exemple): 
ECHO.
SET /p user=  Nom d'utilisateur MySQL: 
SET /p pass=  Mot de passe MySQL: 
ECHO.
SET /p world_db=  Base de donn้es mondiale [world db]:  

SET port=3306


:Begin
CLS
ECHO.
ECHO  oooooo   oooooo     oooo oooo                    oooooooooo.   oooooooooo.  
ECHO   `888.    `888.     .8'   888                     888    `Y8b   888    `Y8b 
ECHO    `888.   .8888.   .8'    888 .oo.   oooo    ooo  888      888  888     888 
ECHO     `888  .8'`888. .8'     888P"Y88b   `88.  .8'   888      888  888oooo888' 
ECHO      `888.8'  `888.8'      888   888    `88..8'    888      888  888    `88b 
ECHO       `888'    `888'       888   888     `888'     888     d88'  888    .88P 
ECHO        `8'      `8'       o888o o888o     .8'     o888bood8P'   o888bood8P'  
ECHO                                       .o..8'                                 
ECHO    http://www.whydb.org               `Y8P' 
ECHO.
ECHO    T - Installer touts les fichiers Fran็ais.
ECHO.
ECHO    I - Instaler les items en Fran็ais.
ECHO      ** Autres traductions vont etre disponibles plus tard.
ECHO.
ECHO    X - Exit this tool
ECHO.
SET /p v= 		Enter a char: 
IF %v%==* GOTO error
IF %v%==t GOTO import
IF %v%==T GOTO import
IF %v%==i GOTO items
IF %v%==I GOTO items
IF %v%==x GOTO exit
IF %v%==X GOTO exit
set v=
GOTO error

:import
CLS
ECHO.
ECHO Installation en cours...
ECHO.
FOR %%C IN (*.sql) DO (
	ECHO Fichier: %%~nxC
	.\mysql --host=%host% --user=%user% --password=%pass% --port=%port% %world_db% < "%%~fC"
)
ECHO.
ECHO Vous devrez changer la colonne `forcelanguage` dans la table 'accounts' เ frFR pour pouvoir employer le traduction fran็aise. 
PAUSE
GOTO begin

:items
CLS
ECHO Installation de `items_localized.sql` en cours...
.\mysql --host=%host% --user=%user% --password=%pass% --port=%port% %world_db% < "items_localized.sql"
ECHO.
ECHO Traduction des items termin้e.
ECHO.
PAUSE
GOTO begin

:error
ECHO	Please enter a correct character.
ECHO.
PAUSE
GOTO begin

:exit