#!/bin/bash

find . -type f -perm -0007 -exec ls -l {} \; | awk '{print $9}' > archivos_peligrosos.txt
