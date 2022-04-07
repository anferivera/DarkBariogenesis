#!/usr/bin/env bash

cat nbs-scan.csv >> Mzvsgp3-00000.csv
cat header_nbs_scan.csv >  nbs-scan.csv
cat Mzvsgp3*.csv | grep -v ,M >> nbs-scan.csv
rm Mzvsgp3*.csv

