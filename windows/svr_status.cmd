@echo Process executed:
@tasklist | findstr "memcached nginx"
@echo Ports lissen:
@netstat /ano | findstr ":11211 :8008"

