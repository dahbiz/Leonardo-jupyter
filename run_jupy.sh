#!/bin/sh

ssh -L 6666:$1:6666 -t username@login01-ext.leonardo.cineca.it 'jupyter lab'