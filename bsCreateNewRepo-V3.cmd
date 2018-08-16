:: https://help.github.com/articles/adding-an-existing-project-to-github-using-the-command-line/
@Echo OFF&Cls
Call :getToday
Set CurProjPath=D:\BenYang\DemoGitByCmd\
Call :getCurCmdFilePath %CurProjPath%
%filedrive%
ECHO %filedrive%%filepath%
CD %filepath%

Set originPath=https://github.com/BenYang77/DemoUnitTestProject1.git
ECHO Update project(DemoUnitTestProject1.git) to %originPath%
SET /P purpose=Please write purpose for it: 
IF "%purpose%"=="" GOTO Error1

SET /P Reason=Please write Reason for it: 
IF "%Reason%"=="" GOTO Error2

ECHO Now it is updating to project! Purpose is %purpose%.

echo ### DemoUnitTestProject %today% %time% >> README.md
echo # Purpose : %purpose% >> README.md
echo #  Reason : %Reason%  >> README.md
echo. >> README.md
echo. >> README.md
Call :CallGit2Update %purpose%

goto :eof

:CallGit2Update 
git init
:: Under Code Add File
:: git add README.md

:: Under Code Add Projects
git add .

:: git commit -m "first commit"
:: git commit -m "second commit"
git commit -m "%today% commit. purpose ： %*"

:: git remote add origin https://gitforbinrueiyang.visualstudio.com/DemoUnitTestProject/DemoUnitTestProject%20Team/_git/DemoUnitTestProject
git remote add origin %originPath%
git remote -v
git checkout master
git push -u origin master
:: git push -u origin bugfix
EXIT /B 0

:getToday
:: adapted from http://stackoverflow.com/a/10945887/1810071
@ECHO OFF
for /f "skip=1" %%x in ('wmic os get localdatetime') do if not defined MyDate Set MyDate=%%x
for /f %%x in ('wmic path win32_localtime get /format:list ^| findstr "="') do Set %%x
@Set fmonth=00%Month%
@Set fday=00%Day%
@Set today=%Year%%fmonth:~-2%%fday:~-2%
@Echo ======================================================================================================================
@Echo ==== %today% %time% ============================================================================================
@Echo ======================================================================================================================
@Set yyyyMM=%Year%%fmonth:~-2%
EXIT /B 0

:getCurCmdFilePath
@ECHO OFF
:: SetLOCAL
:: Set file=C:\Users\l72rugschiri\Desktop\fs.cfg
:: Ref https://ss64.com/nt/for.html
Set filePathStr=%1
FOR %%i IN (%filePathStr%) DO (
    :: D:\BctchScriptCmds\getSubString.cmd
	:: filedrive=C:
	:: filepath=\Users\l72rugschiri\Desktop\
	:: filename=fs
	:: fileextension=.cfg
     Set filedrive=%%~di 
     Set filepath=%%~pi
     Set filename=%%~ni
     Set fileextension=%%~xi
	Cls
)
EXIT /B 0

:Error1
ECHO You did not enter any purpose for it! Bye bye!!
pause
:Error2
ECHO You did not enter any reason for it! Bye bye!!
pause
:End
goto :eof