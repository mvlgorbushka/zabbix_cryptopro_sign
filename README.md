# Sign CryptoPro by Zabbix Agent
## Описание
Мониторинг срока действия электронной подписи КриптоПро в HDImageStore на серверах с JCP
## Требования
Zabbix: 7.0 или выше.

## Установка


## Макросы

|Имя|Описание|По умолчанию|
|----|-----------|-------|
|{$EXPIRY_WARN}|За сколько дней оповещать|`7`|
|{$JCPPATH}|Путь до библиотек КриптоПро JCP|`/opt/jcp/`|
|{$KEYTOOLPATH}|Путь до keytool|`/opt/jdk/bin/`|
|{$USER}|Владелец HDImageStore|`tomcat`|
