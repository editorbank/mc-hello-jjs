@call "%~dp0setting.cmd"
@if not exist .\tmp\ md .\tmp\
@echo Download ...
@if not exist .\tmp\memcached.zip  %CURL% -o .\tmp\memcached.zip %memcached_url%
@if not exist .\tmp\memcached.zip  exit /b 1
@if not exist .\tmp\nginx.zip      %CURL% -o .\tmp\nginx.zip     %nginx_url%
@if not exist .\tmp\nginx.zip      exit /b 1
@if not exist .\tmp\xmemcached.jar %CURL% -o .\tmp\xmemcached.jar %xmemcached_url%
@if not exist .\tmp\xmemcached.jar exit /b 1
@if not exist .\tmp\slf4j_api.jar  %CURL% -o .\tmp\slf4j_api.jar  %slf4j_api_url%
@if not exist .\tmp\slf4j_api.jar  exit /b 1
@if not exist .\tmp\slf4j_impl.jar %CURL% -o .\tmp\slf4j_impl.jar %slf4j_impl_url%
@if not exist .\tmp\slf4j_impl.jar exit /b 1
@echo Done.
