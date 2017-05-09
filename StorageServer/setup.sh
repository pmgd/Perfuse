#!/bin/sh

#Create the chunks directory
if [ ! -d "chunks" ]; then
    mkdir chunks/
fi

if [ ! -d "venv" ]; then
    apt-get install python-pip python-dev build-essential 
    python -m pip install --upgrade pip
    python -m pip install virtualenv
    virtualenv venv
    source venv/bin/activate
    python -m pip install --upgrade pip
    python -m pip install grpcio
    python -m pip install grpcio-tools
    python -m pip install pyping
fi

apt-get install sqlite3
