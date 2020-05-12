#!/bin/bash
mysqladmin -u root -proot create davinci0.3
mysql -P 3306 -h localhost -u root -proot davinci0.3 < $DAVINCI3_HOME/bin/davinci.sql
