FROM debian:stable
RUN apt-get update
RUN apt-get install libaio1 unzip ksh
RUN mkdir -p /opt/oracle
WORKDIR /opt/oracle
ADD instantclient-basic-linux.x64-12.2.0.1.0.zip .
ADD instantclient-sqlplus-linux.x64-12.2.0.1.0.zip .
ADD instantclient-tools-linux.x64-12.2.0.1.0.zip .
RUN unzip instantclient-basic-linux.x64-12.2.0.1.0.zip
RUN unzip instantclient-sqlplus-linux.x64-12.2.0.1.0.zip
RUN unzip instantclient-tools-linux.x64-12.2.0.1.0.zip
RUN rm instantclient-basic-linux.x64-12.2.0.1.0.zip
RUN rm instantclient-sqlplus-linux.x64-12.2.0.1.0.zip
RUN rm instantclient-tools-linux.x64-12.2.0.1.0.zip
RUN ln -s ./instantclient_12_2/libclntsh.so.12.1 ./instantclient_12_2/libclntsh.so
RUN ln -s ./instantclient_12_2/libocci.so.12.1 ./instantclient_12_2/libocci.so
RUN ln -s /opt/oracle/instantclient_12_2/sqlplus /bin/sqlplus
RUN ln -s /opt/oracle/instantclient_12_2/sqlldr /bin/sqlldr

ENV LD_LIBRARY_PATH /opt/oracle/instantclient_12_2
ENV PATH /opt/oracle/instantclient_12_2:$PATH

CMD "/bin/ksh"
