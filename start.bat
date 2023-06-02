@echo off

if not exist git (
    mkdir git
    tar -C git -zxf git.zip
)
if not exist jre (
    mkdir jre
    tar -C jre -zxf jre.zip
)

git fetch --all
git reset --hard origin/main

jre\bin\java -Xmx8g -Xms8g -jar paper-1.19.3-448.jar nogui

pause