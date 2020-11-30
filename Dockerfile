FROM lsstsqre/centos:7-stack-lsst_distrib-v20_0_0
# copy code of server to container
COPY b_script.sh server.py /work/
# run server
ENTRYPOINT ["/bin/bash", "/work/b_script.sh"]
EXPOSE 5000
