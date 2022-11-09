#!/bin/sh

# FOR THE FUTUR
#/bin/sh replace_env.sh

JAVA_OPTS="-Xms${RAM} -Xmx${RAM} -XX:+UseG1GC"
MINECRAFT_OPTS="nogui"

if [[ ! -z ${SPIGOT_VER} ]]; then
#    java $JAVA_OPTS -jar spigot-${SPIGOT_VER}.jar --initSettings
    java $JAVA_OPTS -jar spigot-${SPIGOT_VER}.jar $MINECRAFT_OPTS
else
#    java $JAVA_OPTS -jar spigot.jar --initSettings
    java $JAVA_OPTS -jar spigot.jar $MINECRAFT_OPTS
fi

# Just in case if it crashed:
#tail -f