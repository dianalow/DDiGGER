echo setlocal > launch_DDiGGER_Win.bat
REG.exe QUERY HKLM\Software\R-core\R /v InstallPath > procfiles\dig.tmp
procfiles\gawk\bin\gawk -f procfiles\digger.proc procfiles\dig.tmp >> launch_DDiGGER_Win.bat
echo endlocal >> launch_DDiGGER_Win.bat
del procfiles\dig.tmp
launch_DDiGGER_Win.bat