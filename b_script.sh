#!/bin/bash

echo "befor"
source /opt/lsst/software/stack/loadLSST.bash
python /work/server.py
echo "after"
