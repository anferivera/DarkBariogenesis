#!/usr/bin/env bash

cat general-scan.csv >> xd_scan-general-00000.csv
cat header_general_scan.csv >  general-scan.csv
cat xd_scan-general*.csv | grep -v ,M >> general-scan.csv
rm xd_scan-general-*.csv

