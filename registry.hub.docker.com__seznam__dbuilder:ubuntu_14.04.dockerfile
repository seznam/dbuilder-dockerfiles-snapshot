FROM registry.hub.docker.com/ubuntu:14.04


RUN apt-get update
RUN apt-get install -y equivs devscripts --no-install-recommends --no-install-suggests
VOLUME /dbuilder/bin/
VOLUME /dbuilder/sources/
VOLUME /dbuilder/build/

WORKDIR /dbuilder/build/

ENV DBUILDER_BUILD_CMD="dpkg-buildpackage -j${NCPUS}"

ADD run_dpkg.sh /dbuilder/bin/run_dpkg.sh
ENTRYPOINT /dbuilder/bin/run_dpkg.sh
