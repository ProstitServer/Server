@echo off
chcp 65001
cls

set setup=true
if exist git if exist jre set setup=false

if "%setup%"=="true" (
    echo Первая установка, может занять время
    powershell -Command "Expand-Archive -Path git.zip -DestinationPath git -Force"
    powershell -Command "Expand-Archive -Path jre.zip -DestinationPath jre -Force"
)

echo Обновление файлов сервера
git\bin\git pull

echo Запуск сервера
jre\bin\java -Xmx8g -Xms8g -jar paper-1.19.3-448.jar nogui

pause