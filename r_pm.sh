#! /bin/sh
echo "reset pmnc in both cores"
./pmnc 0 R
./pmnc 1 R
./l2ops reset