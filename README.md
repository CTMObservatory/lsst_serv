# lsst_serv

Container host for the LSST Software Stack driven by socket communication.

This repo uses the official LSST docker image `lsstsqre`.
The port communication requires to expose ports (`EXPOSE 5000` in our case)
inside the dockerfile.

Port forwaring from inside the container to the local machine is set up
when building the container.

The bash script "b_script.sh" is necessaary to set up the LSST environment
inside the "lsstsqre" image with this command:

    source /opt/lsst/software/stack/loadLSST.bash

### Building the container

To build the container, type from the terminal:

    chmod +x b_script.sh
    docker build -t lsst_serv .

### Run the container

    docker run -p 5000:5000 --rm -ti lsst_serv

We map the port 5000 from container to port 5000 in the host machine.

### Sending a message from client to server

TBD
