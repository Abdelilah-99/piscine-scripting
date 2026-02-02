#!/bin/bash

printenv PWD
printenv | grep 'H' | cut -d= -f1
