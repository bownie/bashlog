FROM ubuntu:latest

WORKDIR /tmp
COPY log.sh log.sh
COPY ubuntu_test.sh ubuntu_test.sh
CMD chmod +x log.sh ubuntu_test.sh
CMD /tmp/ubuntu_test.sh && echo "Returns: $?"
