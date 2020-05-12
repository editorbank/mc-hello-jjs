@echo Starts ...
@if not exist "%~dp0tmp\nginx\logs\nginx.pid" @(
	start "nginx" /MIN /D "%~dp0tmp\nginx" nginx.exe
)

@tasklist | findstr "memcached" >nul
@if not "0"=="%ERRORLEVEL%" (
	start "memcached" /MIN /D "%~dp0tmp\memcached" cmd /c memcached.exe
)
@call svr_status.cmd
@echo Done.

