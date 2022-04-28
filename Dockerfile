FROM redhat/ubi8:8.5

LABEL maintainer="benediktflorian.dahlke@dataport.de"
LABEL desc="This image is used as base for the Lozmon Extension, to improve the Monitoring of OpenShift"

RUN dnf install -y iproute
RUN dnf install -y s390utils-base
COPY ./script.sh

RUN ./script
