@call "%~dp0download.cmd"

@echo Unpacking ...
@if not exist ".\tmp\memcached\memcached.exe" %POWERSHELL% -NoP -NonI -Command "Expand-Archive '.\tmp\memcached.zip' '.\tmp\'"
@if not exist ".\tmp\nginx\nginx.exe"         %POWERSHELL% -NoP -NonI -Command "Expand-Archive '.\tmp\nginx.zip'     '.\tmp\'"
@for /D %%I in ( ".\tmp\nginx-*" ) do @ren %%I nginx

@echo Configure ...
@if not exist "%~dp0tmp\nginx\logs\nginx.pid" @(
    if exist .\win.nginx.conf copy .\win.nginx.conf .\tmp\nginx\conf\nginx.conf
    if exist .\tmp\nginx if not exist .\tmp\nginx\conf\conf.d md .\tmp\nginx\conf\conf.d
    if exist .\tmp\nginx\conf\conf.d copy ..\common\8008.conf .\tmp\nginx\conf\conf.d
)

@call svr_start.cmd
@call svr_status.cmd
@echo Done.

