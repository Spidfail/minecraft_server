#!/bin/sh

if [[ ! -d ${SERVER_PATH} ]]; then
    curl -o BuildTools.jar https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar
    if [[ -z  "${SPIGOT_VER}" ]]; then
        echo "Building latest version of Spygot"
        java -jar BuildTools.jar 
    else
        echo "Building version : ${SPIGOT_VER}"
        java -jar BuildTools.jar --rev ${SPIGOT_VER}
    fi
    mkdir ${SERVER_PATH} \
    && mv -f ./spigot*.jar ${SERVER_PATH}
fi