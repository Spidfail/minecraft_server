ARG IMAGE

#####################################################
FROM $IMAGE

ARG ENTRYPOINT_FILE
ARG EULA_FILE
ARG SERVER_PATH
ARG CONFIG_FILE
ARG SPYGOT_CONF_PATH
ARG SPIGOT_VER
ARG RAM

WORKDIR /srv
COPY build.sh .

RUN yum -y install git gettext \
    && /bin/sh build.sh

WORKDIR $SERVER_PATH
COPY . .
ENTRYPOINT /bin/sh $ENTRYPOINT_FILE