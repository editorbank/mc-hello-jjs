# Linux

Скопируйте содержимое проекта в папку, например, `mc-hello-jjs` и перейдите в неё, а дальше выполните команды:
```bash
cd ./linux/
sudo sh ./install.sh && ./test.sh && ./clean.sh
```

Если всё пройдёт успешно, команда `./test.sh` будет давать следующий результат: 
```bash
mch.start ...
SLF4J: Failed to load class "org.slf4j.impl.StaticLoggerBinder".
SLF4J: Defaulting to no-operation (NOP) logger implementation
SLF4J: See http://www.slf4j.org/codes.html#StaticLoggerBinder for further details.
mch.done.
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0100     1  100     1    0     0   1000      0 --:--:-- --:--:-- --:--:--  1000
HTTP/1.1 200 OK

OK
```