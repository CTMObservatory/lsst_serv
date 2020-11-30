# lsst_serv
Container host communication by sockets

Dockerfile uses standard docker image of LSST code "lsstsqre". 
Just to manifest which port we use in the Docker file is "EXPOSE 5000" 
(the number of PORT can be any available free port), but more important 
is setting ports running of the built image.


We need script (in this case we use bash script "b_script.sh") to set up 
environment of the "lsstsqre" image with command:
source /opt/lsst/software/stack/loadLSST.bash


Before make built of docker image please change property of the "b_script.sh" 
with command "chmod +x"


We building the image with standard command:
sudo docker build -t lsst_serv .


We start image:
sudo docker run -p 5000:5000 --rm -ti lsst_serv
where we mapping 5000 port for communication of "server" and "client".
