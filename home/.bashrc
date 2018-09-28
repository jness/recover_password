#!/bin/bash

# a silly service that locks our password file
python server.py &

# give the service a moment to start
sleep 1

# delete the locked password file
rm -rf password.txt
