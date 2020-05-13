@call "%~dp0setting.cmd"

@echo Add key in to memcached ...
@call mch.cmd user "user" method "GET" uri "/aaa"

@echo Testing request ...
@%CURL% -D- -H "iv-user: user"  -H "iv-method: GET" http://localhost:8008/aaa >.\tmp\tmp.tmp

@findstr "200 OK" .\tmp\tmp.tmp
@if "%ERRORLEVEL%"=="0" ( color 2 & echo OK ) else ( color 4 & echo ERROR )