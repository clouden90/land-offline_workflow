From noaaepic/ubuntu20.04-intel-landda:develop

CMD ["/bin/bash"]

ENV HOME=/home
COPY . $HOME/

WORKDIR $HOME

RUN pwd

RUN echo $(ls $HOME)

RUN mkdir build; cd build; wget -q https://epic-sandbox-srw.s3.amazonaws.com/land-da-data.tar.gz; tar xvfz land-da-data.tar.gz

ENV LANDDA_TESTDATA=$HOME/build/land-release
ENV IODA_BUILD_DIR=/opt/ioda-bundle/build
ENV JEDI_EXECDIR=/opt/fv3-bundle/build/bin

RUN source /opt/spack-stack/.bashenv; cd build; ecbuild ../; make -j2; ctest -V --stop-on-failure
