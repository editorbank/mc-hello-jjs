@call "%~dp0setting.cmd"

@if not exist %mch_jjs% exit /b 1
@if not exist .\tmp\xmemcached.jar exit /b 2
@if not exist .\tmp\slf4j_api.jar  exit /b 3
@if not exist .\tmp\slf4j_impl.jar exit /b 4

@%JJS% -J-Djava.class.path=.;.\tmp\xmemcached.jar;.\tmp\slf4j_impl.jar;.\tmp\slf4j_api.jar %mch_jjs% -- %*