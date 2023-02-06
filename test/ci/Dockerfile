From noaaepic/ubuntu20.04-intel-landda:develop

CMD ["/bin/bash"]

WORKDIR /opt
RUN wget https://epic-sandbox-srw.s3.amazonaws.com/land-da-data.tar.gz
RUN tar xvfz land-da-data.tar.gz

WORKDIR /opt/land-release

COPY . ./land-offline_workflow

ENV LANDDA_TESTDATA=/opt/land-release
ENV MPIRUN=mpirun
ENV IODA_BUILD_DIR=/opt/ioda-bundle/build
ENV JEDI_EXECDIR=/opt/fv3-bundle/build/bin

RUN mkdir -p /opt/land-release/land-offline_workflow/build

WORKDIR /opt/land-release/land-offline_workflow/build
CMD ["/bin/bash", "-c", "source /opt/spack-stack/.bashenv;ecbuild ..;make -j2;ctest -V --stop-on-failure"]
