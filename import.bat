:begin
@CLS
@ECHO OFF
TITLE WhyDB PHP To0L
MODE 65,30
COLOR E0
ECHO.
ECHO 	 _    _ _           _____ ____  	
ECHO 	^| ^|  ^| ^| ^|         ^|  _  \ ___ \
ECHO 	^| ^|  ^| ^| ^|__  _   _^| ^| ^| ^| ^|_/ /	
ECHO 	^| ^|/\^| ^| '_ \^| ^| ^| ^| ^| ^| ^| ___ \	
ECHO 	\  /\  / ^| ^| ^| ^|_^| ^| ^|/ /^| ^|_/ /	
ECHO 	 \/  \/^|_^| ^|_^|\__, ^|___/ \____/ 	
ECHO 	               __/ ^|            	
ECHO 	              ^|___/             	
ECHO.
ECHO 	OPTiON	DESCRiPTiON
ECHO 	fresh	For a fresh install of the database.
ECHO 	update	For updating your database.
ECHO 	info	Shows info about your current db.
ECHO 	exit	Closes this program.
ECHO.
SET /p m= 	Option: 
IF %m%==fresh GOTO fresh
IF %m%==update GOTO update
IF %m%==info GOTO info
IF %m%==exit GOTO exit
:fresh
CLS
php import.php fresh
GOTO end
:update
CLS
php import.php update
GOTO end
:info
CLS
php import.php info
GOTO end
:end
PAUSE
GOTO begin
:exit