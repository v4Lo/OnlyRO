#!/bin/bash
~/hercules/tools/mob_db.pl < ~/hercules/db/pre-re/mob_db.txt > ~/hercules/tools/mob_db.sql
mysql -u hercules -pragnarok -h localhost << EOF
USE hercules;
source ~/hercules/tools/mob_db.sql
EOF
